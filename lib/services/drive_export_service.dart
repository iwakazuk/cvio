import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import '../models/drive_destination.dart';

class DriveExportException implements Exception {
  const DriveExportException(this.message);
  final String message;
  @override
  String toString() => message;
}

/// Uploads only to the configured folder. Tokens and recording bytes are never logged.
class DriveExportService {
  DriveExportService(this.client);

  static const chunkSize = 1024 * 1024;
  static const mimeTypes = {
    'amr': 'audio/amr',
    '3gp': 'audio/3gpp',
    '3gpp': 'audio/3gpp',
    'm4a': 'audio/mp4',
    'mp4': 'audio/mp4',
    'aac': 'audio/aac',
    'wav': 'audio/wav',
    'mp3': 'audio/mpeg',
    'ogg': 'audio/ogg',
  };

  final http.Client client;

  Future<String> upload({
    required DriveDestination destination,
    required File file,
    required String name,
    required String accessToken,
    required void Function(double) onProgress,
  }) async {
    final mimeType = mimeTypes[name.split('.').last.toLowerCase()];
    if (mimeType == null) {
      throw const DriveExportException('対応する音声ファイルを選択してください。');
    }
    final size = await file.length();
    if (size == 0) {
      throw const DriveExportException('選択したファイルに音声データがありません。');
    }
    final auth = {
      'Authorization': 'Bearer $accessToken',
      ...destination.resourceHeaders,
    };
    final folder = await client.get(
      Uri.https('www.googleapis.com', '/drive/v3/files/${destination.id}', {
        'fields': 'id,mimeType,trashed,capabilities(canAddChildren)',
        'supportsAllDrives': 'true',
      }),
      headers: auth,
    ).timeout(const Duration(seconds: 30));
    _check(folder);
    final metadata = jsonDecode(folder.body) as Map<String, dynamic>;
    if (metadata['mimeType'] != 'application/vnd.google-apps.folder' ||
        metadata['trashed'] == true ||
        (metadata['capabilities'] as Map?)?['canAddChildren'] != true) {
      throw const DriveExportException('送信先フォルダへの書き込み権限がありません。Googleアカウントを確認してください。');
    }

    final session = await client.post(
      Uri.https('www.googleapis.com', '/upload/drive/v3/files', {
        'uploadType': 'resumable',
        'supportsAllDrives': 'true',
        'fields': 'id',
      }),
      headers: {
        ...auth,
        'Content-Type': 'application/json; charset=UTF-8',
        'X-Upload-Content-Type': mimeType,
        'X-Upload-Content-Length': '$size',
      },
      body: jsonEncode({'name': name, 'parents': [destination.id]}),
    ).timeout(const Duration(seconds: 30));
    _check(session);
    final location = Uri.tryParse(session.headers['location'] ?? '');
    // Do not forward credentials to a host other than the Google API endpoint.
    if (location == null || location.scheme != 'https' ||
        location.host != 'www.googleapis.com') {
      throw const DriveExportException('アップロード先を確認できませんでした。');
    }

    var offset = 0;
    while (offset < size) {
      final end = (offset + chunkSize < size) ? offset + chunkSize : size;
      final bytes = await file.openRead(offset, end).fold<List<int>>(
        <int>[], (buffer, chunk) => buffer..addAll(chunk),
      );
      if (bytes.length != end - offset) {
        throw const DriveExportException('音声ファイルが変更されました。もう一度選択してください。');
      }
      final response = await client.put(
        location,
        headers: {
          ...auth,
          'Content-Type': mimeType,
          'Content-Range': 'bytes $offset-${end - 1}/$size',
        },
        body: bytes,
      ).timeout(const Duration(minutes: 2));
      if (response.statusCode == 200 || response.statusCode == 201) {
        final id = (jsonDecode(response.body) as Map<String, dynamic>)['id'];
        if (end != size || id is! String || id.isEmpty) {
          throw const DriveExportException('送信結果を確認できませんでした。Driveのフォルダを確認してください。');
        }
        onProgress(1);
        return id;
      }
      if (response.statusCode != 308) _check(response);
      final match = RegExp(r'^bytes=0-(\d+)$')
          .firstMatch(response.headers['range'] ?? '');
      final next = match == null ? 0 : int.parse(match.group(1)!) + 1;
      if (next <= offset || next > end || next >= size) {
        throw const DriveExportException('送信結果を確認できませんでした。Driveのフォルダを確認してから再操作してください。');
      }
      offset = next;
      onProgress(offset / size);
    }
    throw const DriveExportException('アップロードが完了しませんでした。');
  }

  void _check(http.Response response) {
    if (response.statusCode >= 200 && response.statusCode < 300) return;
    if (response.statusCode == 401) {
      throw const DriveExportException('Googleの認証が切れました。アカウントを接続し直してください。');
    }
    if (response.statusCode == 403 || response.statusCode == 404) {
      throw const DriveExportException('Driveにアクセスできません。フォルダの編集権限、空き容量、アクセス許可を確認してください。');
    }
    throw const DriveExportException('Google Driveへの送信に失敗しました。再操作の前に送信先を確認してください。');
  }
}

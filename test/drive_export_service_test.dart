import 'package:cvio/models/drive_destination.dart';
import 'dart:convert';
import 'dart:io';

import 'package:cvio/services/drive_export_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';

void main() {
  late Directory directory;
  late File file;
  setUp(() async {
    directory = await Directory.systemTemp.createTemp('cvio-export-test-');
    file = File('${directory.path}/memo.amr');
  });
  tearDown(() async { await directory.delete(recursive: true); });

  http.Response writableFolder() => http.Response(jsonEncode({
    'mimeType': 'application/vnd.google-apps.folder',
    'trashed': false,
    'capabilities': {'canAddChildren': true},
  }), 200);

  test('uploads chunks to the fixed folder and reports acknowledged progress', () async {
    final size = DriveExportService.chunkSize + 5;
    await file.writeAsBytes(List.filled(size, 1));
    var puts = 0;
    final progress = <double>[];
    final client = MockClient((request) async {
      expect(request.headers['Authorization'], 'Bearer test-token');
      if (request.method == 'GET') {
        expect(request.url.path, '/drive/v3/files/${DriveDestination.initial.id}');
        return writableFolder();
      }
      if (request.method == 'POST') {
        expect(jsonDecode(request.body)['parents'], [DriveDestination.initial.id]);
        expect(request.headers['X-Upload-Content-Type'], 'audio/amr');
        return http.Response('', 200, headers: {'location': 'https://www.googleapis.com/upload/session'});
      }
      puts++;
      if (puts == 1) {
        expect(request.bodyBytes.length, DriveExportService.chunkSize);
        expect(request.headers['Content-Range'], 'bytes 0-${DriveExportService.chunkSize - 1}/$size');
        return http.Response('', 308, headers: {'range': 'bytes=0-${DriveExportService.chunkSize - 1}'});
      }
      expect(request.bodyBytes.length, 5);
      expect(request.headers['Content-Range'], 'bytes ${DriveExportService.chunkSize}-${size - 1}/$size');
      return http.Response('{"id":"uploaded-file"}', 200);
    });
    addTearDown(client.close);
    final id = await DriveExportService(client).upload(
      destination: DriveDestination.initial,
      file: file, name: 'memo.amr', accessToken: 'test-token', onProgress: progress.add,
    );
    expect(id, 'uploaded-file');
    expect(puts, 2);
    expect(progress, [DriveExportService.chunkSize / size, 1.0]);
  });

  test('does not upload when folder access is denied', () async {
    await file.writeAsBytes([1]);
    var requests = 0;
    final client = MockClient((request) async {
      requests++;
      expect(request.method, 'GET');
      return http.Response('{}', 403);
    });
    addTearDown(client.close);
    await expectLater(DriveExportService(client).upload(
      destination: DriveDestination.initial,
      file: file, name: 'memo.amr', accessToken: 'token', onProgress: (_) {},
    ), throwsA(isA<DriveExportException>()));
    expect(requests, 1);
  });

  test('uses the selected folder and its resource key for upload', () async {
    await file.writeAsBytes([1, 2, 3]);
    const destination = DriveDestination('another-folder', resourceKey: '0-key');
    final client = MockClient((request) async {
      expect(request.headers['X-Goog-Drive-Resource-Keys'], 'another-folder/0-key');
      if (request.method == 'GET') {
        expect(request.url.path, '/drive/v3/files/another-folder');
        return writableFolder();
      }
      if (request.method == 'POST') {
        expect(jsonDecode(request.body)['parents'], ['another-folder']);
        return http.Response('', 200, headers: {
          'location': 'https://www.googleapis.com/upload/session',
        });
      }
      return http.Response('{"id":"file-in-selected-folder"}', 200);
    });
    addTearDown(client.close);
    expect(await DriveExportService(client).upload(
      destination: destination, file: file, name: 'memo.amr',
      accessToken: 'token', onProgress: (_) {},
    ), 'file-in-selected-folder');
  });

  test('rejects empty recordings before contacting Google', () async {
    await file.writeAsBytes([]);
    final client = MockClient((_) async => throw StateError('Unexpected request'));
    addTearDown(client.close);
    await expectLater(DriveExportService(client).upload(
      destination: DriveDestination.initial,
      file: file, name: 'memo.amr', accessToken: 'token', onProgress: (_) {},
    ), throwsA(isA<DriveExportException>()));
  });

  test('never sends recording or credentials to a foreign session host', () async {
    await file.writeAsBytes([1]);
    final client = MockClient((request) async {
      expect(request.url.host, 'www.googleapis.com');
      if (request.method == 'GET') return writableFolder();
      expect(request.method, 'POST');
      return http.Response('', 200, headers: {'location': 'https://example.com/upload'});
    });
    addTearDown(client.close);
    await expectLater(DriveExportService(client).upload(
      destination: DriveDestination.initial,
      file: file, name: 'memo.amr', accessToken: 'token', onProgress: (_) {},
    ), throwsA(isA<DriveExportException>()));
  });

  test('does not report completion or retry when the final upload fails', () async {
    await file.writeAsBytes(List.filled(DriveExportService.chunkSize + 1, 1));
    var puts = 0;
    final progress = <double>[];
    final client = MockClient((request) async {
      if (request.method == 'GET') return writableFolder();
      if (request.method == 'POST') {
        return http.Response('', 200, headers: {
          'location': 'https://www.googleapis.com/upload/session',
        });
      }
      puts++;
      if (puts == 1) {
        return http.Response('', 308, headers: {
          'range': 'bytes=0-${DriveExportService.chunkSize - 1}',
        });
      }
      return http.Response('{}', 503);
    });
    addTearDown(client.close);
    await expectLater(DriveExportService(client).upload(
      destination: DriveDestination.initial,
      file: file, name: 'memo.amr', accessToken: 'token', onProgress: progress.add,
    ), throwsA(isA<DriveExportException>()));
    expect(puts, 2);
    expect(progress, hasLength(1));
    expect(progress.single, lessThan(1));
  });
}

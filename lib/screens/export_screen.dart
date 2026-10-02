import 'dart:async';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;
import 'package:hive/hive.dart';

import '../models/drive_destination.dart';

import '../services/drive_export_service.dart';
import '../utils/app_text_style.dart';
import '../widgets/app_container.dart';

class ExportScreen extends StatefulWidget {
  const ExportScreen({super.key});

  @override
  State<ExportScreen> createState() => _ExportScreenState();
}

class _ExportScreenState extends State<ExportScreen> {
  static const _clientId = String.fromEnvironment('GOOGLE_SERVER_CLIENT_ID');
  // A pre-existing folder is not automatically accessible with drive.file.
  // See docs/drive-export.md for the scope choice and deployment requirements.
  late final GoogleSignIn _signIn = GoogleSignIn(
    serverClientId: _clientId.isEmpty ? null : _clientId,
    scopes: const ['https://www.googleapis.com/auth/drive'],
  );
  DriveDestination _destination = DriveDestination.initial;
  Box<String>? _settings;
  bool _loadingDestination = true;
  bool _destinationLoadFailed = false;

  @override
  void initState() {
    super.initState();
    _loadDestination();
  }

  Future<void> _loadDestination() async {
    try {
      final settings = await Hive.openBox<String>('drive_export_settings');
      final saved = settings.get('destination_url');
      final destination = saved == null
          ? DriveDestination.initial : DriveDestination.parse(saved);
      if (!mounted) return;
      setState(() { _settings = settings; _destination = destination; });
    } catch (_) {
      if (mounted) setState(() {
        _destinationLoadFailed = true;
        _message = '保存先を読み込めませんでした。画面を開き直してください。';
        _isError = true;
      });
    } finally {
      if (mounted) setState(() { _loadingDestination = false; });
    }
  }

  Future<void> _changeDestination() async {
    var folderUrl = _destination.url;
    final formKey = GlobalKey<FormState>();
    final selected = await showDialog<DriveDestination>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: const Text('保存先を変更'),
        content: Form(
          key: formKey,
          child: TextFormField(
            initialValue: folderUrl,
            onChanged: (value) => folderUrl = value,
            autofocus: true,
            keyboardType: TextInputType.url,
            autocorrect: false,
            maxLines: 3,
            decoration: const InputDecoration(labelText: 'Google DriveのフォルダURL'),
            validator: (value) {
              try { DriveDestination.parse(value ?? ''); return null; }
              on FormatException catch (error) { return error.message; }
            },
          ),
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(dialogContext), child: const Text('キャンセル')),
          TextButton(
            onPressed: () {
              if (formKey.currentState!.validate()) {
                Navigator.pop(dialogContext, DriveDestination.parse(folderUrl));
              }
            },
            child: const Text('保存'),
          ),
        ],
      ),
    );
    if (selected == null || !mounted) return;
    final settings = _settings;
    if (settings == null) {
      throw const DriveExportException('保存先を記憶できません。画面を開き直してください。');
    }
    await settings.put('destination_url', selected.url);
    if (!mounted) return;
    setState(() {
      _destination = selected;
      _uploaded = false;
      _message = '保存先を変更しました。書き込み権限は送信時に確認します。';
    });
  }

  GoogleSignInAccount? _account;
  PlatformFile? _file;
  bool _busy = false;
  bool _uploaded = false;
  double? _progress;
  String? _message;
  bool _isError = false;
  http.Client? _client;

  @override
  void dispose() {
    _client?.close();
    super.dispose();
  }

  Future<void> _run(Future<void> Function() action) async {
    if (_busy || _loadingDestination || _destinationLoadFailed) return;
    setState(() { _busy = true; _message = null; _isError = false; });
    try {
      await action();
    } on DriveExportException catch (error) {
      _showError(error.message);
    } on PlatformException {
      _showError('操作を完了できませんでした。Google接続設定・アクセス許可を確認してください。');
    } on TimeoutException {
      _showError('通信がタイムアウトしました。再送信の前にDriveにファイルが届いていないか確認してください。');
    } on SocketException {
      _showError('通信できません。接続とDriveの送信先を確認してから再操作してください。');
    } catch (_) {
      _showError('処理を完了できませんでした。音声ファイルと通信状態、Driveの送信先を確認してください。');
    } finally {
      _client?.close();
      _client = null;
      if (mounted) setState(() { _busy = false; _progress = null; });
    }
  }

  void _showError(String message) {
    if (mounted) setState(() { _message = message; _isError = true; });
  }

  Future<void> _connect() async {
    if (_clientId.isEmpty) {
      throw const DriveExportException('Google接続の初期設定が未完了です。アプリの管理者に設定を依頼してください。');
    }
    final account = await _signIn.signIn();
    if (!mounted) return;
    setState(() {
      _account = account;
      if (account == null) _message = 'Googleへの接続をキャンセルしました。';
    });
  }

  Future<void> _pickFile() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: DriveExportService.mimeTypes.keys.toList(),
      allowMultiple: false,
      withData: false,
    );
    if (!mounted || result == null) return;
    final selected = result.files.single;
    if (selected.path == null) {
      throw const DriveExportException('音声ファイルを読み取れませんでした。端末に書き出したファイルを選択してください。');
    }
    setState(() { _file = selected; _uploaded = false; });
  }

  Future<void> _export() async {
    final selected = _file;
    if (selected?.path == null || _uploaded) return;
    if (_account == null) await _connect();
    final account = _account;
    if (!mounted || account == null) return;
    final auth = await account.authentication;
    if (!mounted) return;
    final token = auth.accessToken;
    if (token == null) {
      throw const DriveExportException('Googleのアクセス許可を取得できませんでした。接続し直してください。');
    }
    _client = http.Client();
    setState(() { _progress = 0; });
    await DriveExportService(_client!).upload(
      destination: _destination,
      file: File(selected!.path!),
      name: selected.name,
      accessToken: token,
      onProgress: (value) {
        if (mounted) setState(() { _progress = value; });
      },
    );
    if (mounted) setState(() {
      _uploaded = true;
      _message = 'Google Driveへのエクスポートが完了しました。';
    });
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: !_busy,
      child: Scaffold(
        appBar: AppBar(title: Text('エクスポート', style: AppTextStyle.header)),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 16),
              AppContainer(
                title: '通話音声メモの準備',
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(0, 16, 16, 16),
                  child: Text(
                    '1. AQUOSの「簡易留守録」を開き、「通話音声メモ」を選びます。\n'
                    '2. 録音を長押しして「エクスポート」を選び、端末のフォルダへ保存します。\n'
                    '3. この画面で保存した音声ファイルを選択してください。',
                    style: TextStyle(fontSize: 14, height: 1.7),
                  ),
                ),
              ),
              AppContainer(
                title: 'Google Drive',
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 12, 16, 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('保存先フォルダ'),
                      const SizedBox(height: 8),
                      if (_loadingDestination)
                        const Text('保存先を読み込み中…')
                      else if (!_destinationLoadFailed)
                        SelectableText(_destination.url, style: const TextStyle(fontSize: 12)),
                      TextButton(
                        onPressed: _busy || _loadingDestination || _destinationLoadFailed
                            ? null : () => _run(_changeDestination),
                        child: const Text('保存先を変更'),
                      ),
                      const SizedBox(height: 8),
                      Text(_account?.email ?? 'Googleアカウント未接続'),
                      TextButton(
                        onPressed: _busy || _loadingDestination || _destinationLoadFailed ? null : () => _run(() async {
                          if (_account != null) {
                            await _signIn.signOut();
                            if (!mounted) return;
                            setState(() { _account = null; });
                          }
                          await _connect();
                        }),
                        child: Text(_account == null ? 'Googleアカウントを接続' : 'アカウントを変更'),
                      ),
                    ],
                  ),
                ),
              ),
              AppContainer(
                title: '音声ファイル',
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 12, 16, 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(_file?.name ?? 'ファイルが選択されていません'),
                      if (_file != null) Text('${(_file!.size / 1024 / 1024).toStringAsFixed(1)} MB'),
                      TextButton.icon(
                        onPressed: _busy || _loadingDestination || _destinationLoadFailed ? null : () => _run(_pickFile),
                        icon: const Icon(Icons.audio_file_outlined),
                        label: const Text('音声ファイルを選択'),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepOrange,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.all(16),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      ),
                      onPressed: _busy || _loadingDestination || _destinationLoadFailed || _file == null || _uploaded ? null : () => _run(_export),
                      icon: const Icon(Icons.cloud_upload_outlined),
                      label: Text(_uploaded ? 'エクスポート済み' : 'エクスポート'),
                    ),
                    if (_busy) ...[
                      const SizedBox(height: 16),
                      LinearProgressIndicator(value: _progress),
                      const SizedBox(height: 8),
                      Text(_progress == null ? '処理中…' : 'アップロード中 ${(_progress! * 100).floor()}%'),
                    ],
                    if (_message != null) ...[
                      const SizedBox(height: 16),
                      Semantics(
                        liveRegion: true,
                        child: Text(_message!, style: TextStyle(
                          color: _isError ? Theme.of(context).colorScheme.error : null,
                        )),
                      ),
                    ],
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

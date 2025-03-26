import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class EncryptionHelper {
  static const _secureStorageKey = 'db_encryption_key';

  static final EncryptionHelper instance = EncryptionHelper._();
  EncryptionHelper._();

  static final _secureStorage = const FlutterSecureStorage();

  /// すでに暗号化キーがあればそれを返し、
  /// なければ新規に作成したキーを Secure Storage に保存して返す
  static Future<Uint8List> getOrCreateEncryptionKey() async {
    // すでに保存されているキーを読み込む
    final existingKey = await _secureStorage.read(key: _secureStorageKey);

    // キーが存在する場合は base64 からバイト配列に変換して返す
    if (existingKey != null) {
      return base64Decode(existingKey);
    }

    // キーが存在しない場合、新規に作成して保存する
    final newKey = _generateRandomKey();
    await _secureStorage.write(
      key: _secureStorageKey,
      value: base64Encode(newKey),
    );
    return newKey;
  }

  /// 32バイトのランダムなバイト配列を生成する（AES-256 用など）
  static Uint8List _generateRandomKey() {
    final rand = Random.secure();
    return Uint8List.fromList(
      List<int>.generate(32, (_) => rand.nextInt(256)),
    );
  }

  /// 暗号化キーを生成
  static Future<Uint8List> getEncryptionKey() async {
    // Secure Storage 上はbase64やhexなどの文字列で持ちます
    String? storedHex = await _secureStorage.read(key: _secureStorageKey);

    if (storedHex == null) {
      // 32バイト乱数生成 (AES-256)
      final random = Random.secure();
      final keyBytes = List<int>.generate(32, (_) => random.nextInt(256));

      // 文字列化(例: Hex)してSecureStorageに保存
      storedHex = keyBytes.map((byte) => byte.toRadixString(16).padLeft(2, '0')).join();
      await _secureStorage.write(key: _secureStorageKey, value: storedHex);
    }

    // Hex → Uint8List
    final keyBytes = <int>[];
    for (var i = 0; i < storedHex.length; i += 2) {
      keyBytes.add(int.parse(storedHex.substring(i, i + 2), radix: 16));
    }
    return Uint8List.fromList(keyBytes);
  }
}

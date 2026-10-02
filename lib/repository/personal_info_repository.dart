import 'dart:convert';
import 'package:hive/hive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../helper/encryption_helper.dart';
import '../models/personal_info.dart';

class PersonalInfoRepository {
  static const _boxName = 'personal_info_box';
  static const _key = 'personal_info';

  /// DB から [PersonalInfo] を読み込み
  Future<PersonalInfo?> loadPersonalInfo() async {
    // 暗号化キーを SecureStorage から取り出し (32バイト)
    final key = await EncryptionHelper.getOrCreateEncryptionKey();
    final box = await Hive.openBox(_boxName, encryptionCipher: HiveAesCipher(key));
    final raw = box.get(_key);

    if (raw == null) return null;

    final jsonString = raw as String;
    final map = jsonDecode(jsonString) as Map<String, dynamic>;
    return PersonalInfo.fromJson(map);
  }

  /// [info] を DB に保存(上書き)
  Future<void> savePersonalInfo(PersonalInfo info) async {
    final key = await EncryptionHelper.getOrCreateEncryptionKey();
    final box = await Hive.openBox(_boxName, encryptionCipher: HiveAesCipher(key));
    final jsonString = jsonEncode(info.toJson());
    await box.put(_key, jsonString);
  }
}

final personalInfoRepositoryProvider = Provider<PersonalInfoRepository>((ref) {
  return PersonalInfoRepository();
});

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
    return PersonalInfoExtension.fromMap(map);
  }

  /// [info] を DB に保存(上書き)
  Future<void> savePersonalInfo(PersonalInfo info) async {
    final key = await EncryptionHelper.getOrCreateEncryptionKey();
    final box = await Hive.openBox(_boxName, encryptionCipher: HiveAesCipher(key));
    final jsonString = jsonEncode(info.toMap());
    await box.put(_key, jsonString);
  }

  /// NOTE: 以下は Isar を使った場合のコード
  /// 安定バージョンが出るまでコメントアウトしておく
  // /// DB から [PersonalInfo] を読み込み
  // /// データがまだない場合は null を返す
  // Future<PersonalInfo?> loadPersonalInfo() async {
  //   final isar = await IsarService.getInstance();
  //   final domain =  isar.personalInfoDocs.get(1)?.toDomain();
  //   print('loadPersonalInfo: ${domain?.phone}');
  //   return domain;
  // }
  //
  // /// [info] を DB に保存(上書き)
  // Future<void> savePersonalInfo(PersonalInfo info) async {
  //   final isar = await IsarService.getInstance();
  //
  //   print('savePersonalInfo: ${info.phone}');
  //   // docを作成
  //   final doc = PersonalInfoDoc.fromDomain(info, 1);
  //
  //   // 書き込みトランザクション
  //   await isar.writeAsync((isar) {
  //     isar.personalInfoDocs.put(doc);
  //   });
  // }
  //
  // /// 削除
  // Future<bool> deletePersonalInfoDoc(int id) async {
  //   final isar = await IsarService.getInstance();
  //   return await isar.writeAsync((isar) {
  //     return isar.personalInfoDocs.delete(id);
  //   });
  // }
}

final personalInfoRepositoryProvider = Provider<PersonalInfoRepository>((ref) {
  return PersonalInfoRepository();
});

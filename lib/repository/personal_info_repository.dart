import 'dart:convert';

import 'package:hive/hive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../models/personal_info.dart';

class PersonalInfoRepository {
  static const _boxName = 'personal_info_box';
  static const _key = 'personal_info';

  /// DB から [PersonalInfo] を読み込み
  /// データがまだない場合は null を返す
  Future<PersonalInfo?> loadPersonalInfo() async {
    final box = await Hive.openBox(_boxName);
    final raw = box.get(_key);

    if (raw == null) {
      return null; // まだ保存されていない
    }

    // raw は JSON文字列 なので、jsonDecode して Map<String, dynamic> に変換する
    final jsonString = raw as String;
    final map = jsonDecode(jsonString) as Map<String, dynamic>;

    // Map から PersonalInfo を復元
    return PersonalInfo.fromMap(map);
  }

  /// [info] を DB に保存(上書き)
  Future<void> savePersonalInfo(PersonalInfo info) async {
    final box = await Hive.openBox(_boxName);

    // info.toMap() を JSON文字列にして保存
    final jsonString = jsonEncode(info.toMap());
    await box.put(_key, jsonString);
  }
}

final personalInfoRepositoryProvider = Provider<PersonalInfoRepository>((ref) {
  return PersonalInfoRepository();
});

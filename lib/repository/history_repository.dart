import 'dart:convert';
import 'package:hive/hive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../models/academic.dart';
import '../models/history.dart';
import '../models/qualification.dart';
import '../models/work.dart';

class HistoryRepository {
  static const _academicBoxName = 'academic_box';
  static const _qualificationBoxName = 'qualification_box';
  static const _workBoxName = 'work_box';
  static const _academicKey = 'academic';
  static const _qualificationKey = 'qualification';
  static const _workKey = 'work';

  /// DB から [History] を読み込み
  Future<History?> loadHistory() async {
    final academicBox = await Hive.openBox(_academicBoxName);
    final qualificationBox = await Hive.openBox(_qualificationBoxName);
    final workBox = await Hive.openBox(_workBoxName);

    final academicRaw = academicBox.get(_academicKey);
    final qualificationRaw = qualificationBox.get(_qualificationKey);
    final workRaw = workBox.get(_workKey);

    // 全部が null ならまだ保存されていない想定なので null を返す
    if (academicRaw == null && qualificationRaw == null && workRaw == null) {
      return null;
    }

    // それぞれ JSON文字列 -> List -> 各モデルに変換
    final academics = academicRaw != null
        ? (jsonDecode(academicRaw) as List)
            .map((e) => Academic.fromJson(e as Map<String, dynamic>))
            .toList()
        : <Academic>[];

    final qualifications = qualificationRaw != null
        ? (jsonDecode(qualificationRaw) as List)
            .map((e) => Qualification.fromJson(e as Map<String, dynamic>))
            .toList()
        : <Qualification>[];

    final works = workRaw != null
        ? (jsonDecode(workRaw) as List)
            .map((e) => Work.fromJson(e as Map<String, dynamic>))
            .toList()
        : <Work>[];

    return History(
      academics: academics,
      qualifications: qualifications,
      works: works,
    );
  }

  /// [history] を DB に保存(上書き)
  Future<void> saveHistory(History history) async {
    final academicBox = await Hive.openBox(_academicBoxName);
    final qualificationBox = await Hive.openBox(_qualificationBoxName);
    final workBox = await Hive.openBox(_workBoxName);

    // List -> JSON に変換して保存
    final academicJsonString =
        jsonEncode(history.academics.map((e) => e.toJson()).toList());
    final qualificationJsonString =
        jsonEncode(history.qualifications.map((e) => e.toJson()).toList());
    final workJsonString =
        jsonEncode(history.works.map((e) => e.toJson()).toList());

    await academicBox.put(_academicKey, academicJsonString);
    await qualificationBox.put(_qualificationKey, qualificationJsonString);
    await workBox.put(_workKey, workJsonString);
  }
}

final historyRepositoryProvider = Provider<HistoryRepository>((ref) {
  return HistoryRepository();
});

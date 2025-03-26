import 'dart:convert';

import 'package:cvio/scheme/academic_doc.dart';
import 'package:cvio/scheme/qualification_doc.dart';
import 'package:cvio/scheme/work_doc.dart';
import 'package:hive/hive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:isar/isar.dart';
import '../helper/encryption_helper.dart';
import '../models/academic.dart';
import '../models/history.dart';
import '../models/qualification.dart';
import '../models/work.dart';
import '../services/isar_service.dart';

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
            .map((e) => AcademicExtension.fromMap(e as Map<String, dynamic>))
            .toList()
        : <Academic>[];

    final qualifications = qualificationRaw != null
        ? (jsonDecode(qualificationRaw) as List)
            .map((e) =>
                QualificationExtension.fromMap(e as Map<String, dynamic>))
            .toList()
        : <Qualification>[];

    final works = workRaw != null
        ? (jsonDecode(workRaw) as List)
            .map((e) => WorkExtension.fromMap(e as Map<String, dynamic>))
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

    // List -> Map に変換後、JSON文字列にして保存
    final academicJsonString =
        jsonEncode(history.academics.map((e) => e.toMap()).toList());
    final qualificationJsonString =
        jsonEncode(history.qualifications.map((e) => e.toMap()).toList());
    final workJsonString =
        jsonEncode(history.works.map((e) => e.toMap()).toList());

    await academicBox.put(_academicKey, academicJsonString);
    await qualificationBox.put(_qualificationKey, qualificationJsonString);
    await workBox.put(_workKey, workJsonString);
  }

  /// NOTE: 以下は Isar を使った場合のコード
  /// 安定バージョンが出るまでコメントアウトしておく
// /// DB から [History] を読み込み
// /// データがまったく無ければ null を返す
// Future<History?> loadHistory() async {
//   final isar = await IsarService.getInstance();
//   final academics = await isar.academicDocs.where().findAll();
//   final qualifications = await isar.qualificationDocs.where().findAll();
//   final works = await isar.workDocs.where().findAll();
//
//   // 全部空ならまだ保存されていないと判断して null
//   if (academics.isEmpty && qualifications.isEmpty && works.isEmpty) {
//     return null;
//   }
//
//   return History(
//     academics: academics.map((e) => e.toDomain()).toList(),
//     qualifications: qualifications.map((e) => e.toDomain()).toList(),
//     works: works.map((e) => e.toDomain()).toList(),
//   );
// }
//
// /// [history] を DB に保存(上書き)
// Future<void> saveHistory(History history) async {
//   final isar = await IsarService.getInstance();
//
//   await isar.writeAsync((isar) {
//     isar.academicDocs.clear();
//     isar.qualificationDocs.clear();
//     isar.workDocs.clear();
//
//     // 学歴
//     isar.academicDocs.putAll(
//       history.academics
//           .asMap()
//           .entries
//           .map((entry) {
//         final index = entry.key;
//         final academic = entry.value;
//         return AcademicDoc.fromDomain(academic, index + 1);
//       })
//           .toList(),
//     );
//
//     // 資格
//     isar.qualificationDocs.putAll(
//       history.qualifications
//           .asMap()
//           .entries
//           .map((entry) {
//         final index = entry.key;
//         final qualification = entry.value;
//         return QualificationDoc.fromDomain(qualification, index + 1);
//       })
//           .toList(),
//     );
//
//     // 職歴
//     isar.workDocs.putAll(
//       history.works
//           .asMap()
//           .entries
//           .map((entry) {
//         final index = entry.key;
//         final work = entry.value;
//         return WorkDoc.fromDomain(work, index + 1);
//       })
//           .toList(),
//     );
//   });
// }
}

final historyRepositoryProvider = Provider<HistoryRepository>((ref) {
  return HistoryRepository();
});

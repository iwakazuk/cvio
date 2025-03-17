import 'package:cvio/models/academic.dart';
import 'package:cvio/models/qualification.dart';
import 'package:cvio/models/work.dart';

/// 職歴・学歴・資格をまとめたクラス
class History {
  /// 学歴
  final List<Academic> academics;

  /// 職歴
  final List<Work> works;

  /// 資格
  final List<Qualification> qualifications;

  History({
    this.academics = const [],
    this.works = const [],
    this.qualifications = const [],
  });

  /// copyWith メソッド
  History copyWith({
    List<Academic>? academics,
    List<Work>? works,
    List<Qualification>? qualifications,
  }) {
    return History(
      academics: academics ?? this.academics,
      works: works ?? this.works,
      qualifications: qualifications ?? this.qualifications,
    );
  }
}

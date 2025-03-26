import 'package:isar/isar.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'academic.freezed.dart';

@freezed
class Academic with _$Academic {
  const factory Academic({
    /// 学校名
    String? name,

    /// 専攻
    String? major,

    /// 入学時期 / 卒業時期（年）
    String? year,

    /// 入学時期 / 卒業時期（月）
    String? month,

    /// 入学 or 卒業
    bool? isJoin,
  }) = _Academic;
}

extension AcademicExtension on Academic {
  /// DB 等に保存する際に Map<String, dynamic> に変換する
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'major': major,
      'year': year,
      'month': month,
      'isJoin': isJoin,
    };
  }

  /// DB から読み込んだ Map<String, dynamic> から Academic を生成
  static Academic fromMap(Map<String, dynamic> map) {
    return Academic(
      name: map['name'],
      major: map['major'],
      year: map['year'],
      month: map['month'],
      isJoin: map['isJoin'],
    );
  }
}

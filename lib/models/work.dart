import 'package:freezed_annotation/freezed_annotation.dart';

part 'work.freezed.dart';

/// 職歴
@freezed
class Work with _$Work {
  const factory Work({
    /// 会社名
    String? name,

    /// 役職
    String? position,

    /// 入社時期 / 退職時期（年）
    String? year,

    /// 入社時期 / 退職時期（月）
    String? month,

    /// 職務内容
    String? description,

    /// 退職理由
    String? reason,

    /// 入社 or 退職
    bool? isJoin,
  }) = _Work;
}

extension WorkExtension on Work {
  /// DB 等に保存する際に Map<String, dynamic> に変換する
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'position': position,
      'year': year,
      'month': month,
      'description': description,
      'reason': reason,
      'isJoin': isJoin,
    };
  }

  /// DB から読み込んだ Map<String, dynamic> から Work を生成
  static Work fromMap(Map<String, dynamic> map) {
    return Work(
      name: map['name'],
      position: map['position'],
      year: map['year'],
      month: map['month'],
      description: map['description'],
      reason: map['reason'],
      isJoin: map['isJoin'],
    );
  }
}

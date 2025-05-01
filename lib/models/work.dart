import 'package:freezed_annotation/freezed_annotation.dart';

part 'work.freezed.dart';
part 'work.g.dart';

/// 職歴
@freezed
abstract class Work with _$Work {
  const factory Work({
    /// 会社名
    String? name,

    /// 役職
    String? position,

    /// 入社時期 / 退職時期（年）TODO: 年と月を分けるかどうか
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

  /// JSON から `Work` インスタンスを生成
  factory Work.fromJson(Map<String, dynamic> json) => _$WorkFromJson(json);
}

extension WorkX on Work {
  /// 表示用：年/月 を結合
  String get yearMonth {
    final year = this.year ?? '';
    final month = this.month ?? '';
    return '$year/$month';
  }

  /// 年月による比較（降順：新しい順）
  int compareTo(Work other) {
    final y1 = int.tryParse(year ?? '') ?? 0;
    final m1 = int.tryParse(month ?? '') ?? 0;
    final y2 = int.tryParse(other.year ?? '') ?? 0;
    final m2 = int.tryParse(other.month ?? '') ?? 0;

    // 降順：新しい順にソートしたい場合は y2 - y1
    if (y2 != y1) return y2 - y1;
    return m2 - m1;
  }
}


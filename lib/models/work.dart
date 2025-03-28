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

  /// JSON から `Work` インスタンスを生成
  factory Work.fromJson(Map<String, dynamic> json) => _$WorkFromJson(json);
}

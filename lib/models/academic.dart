import 'package:freezed_annotation/freezed_annotation.dart';

part 'academic.freezed.dart';
part 'academic.g.dart';

@freezed
abstract class Academic with _$Academic {
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

  /// JSON から `Academic` インスタンスを生成
  factory Academic.fromJson(Map<String, dynamic> json) => _$AcademicFromJson(json);
}

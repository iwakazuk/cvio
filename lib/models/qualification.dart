import 'package:freezed_annotation/freezed_annotation.dart';

part 'qualification.freezed.dart';
part 'qualification.g.dart';

/// 資格
@freezed
abstract class Qualification with _$Qualification {
  const factory Qualification({
    /// 資格名
    String? name,

    /// 取得時期(年)
    String? year,

    /// 取得時期(月)
    String? month,
  }) = _Qualification;

  /// JSON から `Qualification` インスタンスを生成
  factory Qualification.fromJson(Map<String, dynamic> json) => _$QualificationFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'qualification.freezed.dart';

/// 資格
@freezed
class Qualification with _$Qualification {
  const factory Qualification({
    /// 資格名
    String? name,

    /// 取得時期(年)
    String? year,

    /// 取得時期(月)
    String? month,
  }) = _Qualification;
}

extension QualificationExtension on Qualification {
  /// DB 等に保存する際に Map<String, dynamic> に変換する
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'year': year,
      'month': month,
    };
  }

  /// DB から読み込んだ Map<String, dynamic> から Qualification を生成
  static Qualification fromMap(Map<String, dynamic> map) {
    return Qualification(
      name: map['name'],
      year: map['year'],
      month: map['month'],
    );
  }
}

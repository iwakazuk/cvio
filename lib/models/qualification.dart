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

extension QualificationX on Qualification {
  /// 表示用の年月
  String get yearMonth {
    final y = year ?? '';
    final m = month ?? '';
    return '$y/$m';
  }

  /// 年月ベースの比較（新しい順）
  int compareTo(Qualification other) {
    final y1 = int.tryParse(year ?? '') ?? 0;
    final m1 = int.tryParse(month ?? '') ?? 0;
    final y2 = int.tryParse(other.year ?? '') ?? 0;
    final m2 = int.tryParse(other.month ?? '') ?? 0;

    if (y2 != y1) return y2 - y1;
    return m2 - m1;
  }
}


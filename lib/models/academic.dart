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

extension AcademicX on Academic {
  /// 表示用の年月
  String get yearMonth {
    final y = year ?? '';
    final m = month ?? '';
    return '$y/$m';
  }

  /// 年月ベースの比較（新しい順）
  int compareTo(Academic other) {
    final y1 = int.tryParse(year ?? '') ?? 0;
    final m1 = int.tryParse(month ?? '') ?? 0;
    final y2 = int.tryParse(other.year ?? '') ?? 0;
    final m2 = int.tryParse(other.month ?? '') ?? 0;

    if (y2 != y1) return y2 - y1;
    return m2 - m1;
  }
}


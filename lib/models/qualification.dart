/// 資格
class Qualification {
  /// 資格名
  final String? name;

  /// 取得時期(年)
  final String? year;

  /// 取得時期(月)
  final String? month;

  Qualification({
    this.name,
    this.year,
    this.month,
  });

  /// copyWith メソッド
  Qualification copyWith({
    String? name,
    String? year,
    String? month,
  }) {
    return Qualification(
      name: name ?? this.name,
      year: year ?? this.year,
      month: month ?? this.month,
    );
  }

  /// DB 等に保存する際に Map<String, dynamic> に変換する
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'year': year,
      'month': month,
    };
  }

  /// DB から読み込んだ Map<String, dynamic> から Qualification を生成
  factory Qualification.fromMap(Map<String, dynamic> map) {
    return Qualification(
      name: map['name'],
      year: map['year'],
      month: map['month'],
    );
  }
}

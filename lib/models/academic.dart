/// 学歴
class Academic {
  /// 学校名
  final String? name;

  /// 専攻
  final String? major;

  /// 入学時期 / 卒業時期（年）
  final String? year;

  /// 入学時期 / 卒業時期（月）
  final String? month;

  /// 入学 or 卒業
  final bool? isJoin;

  Academic({
    this.name,
    this.major,
    this.year,
    this.month,
    this.isJoin,
  });

  /// copyWith メソッド
  Academic copyWith({
    String? name,
    String? major,
    String? year,
    String? month,
    bool? isJoin,
  }) {
    return Academic(
      name: name ?? this.name,
      major: major ?? this.major,
      year: year ?? this.year,
      month: month ?? this.month,
      isJoin: isJoin ?? this.isJoin,
    );
  }

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
  factory Academic.fromMap(Map<String, dynamic> map) {
    return Academic(
      name: map['name'],
      major: map['major'],
      year: map['year'],
      month: map['month'],
      isJoin: map['isJoin'],
    );
  }
}

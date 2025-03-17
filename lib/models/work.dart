/// 職歴
class Work {
  /// 会社名
  final String? name;

  /// 役職
  final String? position;

  /// 入社時期 / 退職時期（年）
  final String? year;

  /// 入社時期 / 退職時期（月）
  final String? month;

  /// 職務内容
  final String? description;

  /// 退職理由
  final String? reason;

  /// 入社 or 退職
  final bool? isJoin;

  Work({
    this.name,
    this.position,
    this.year,
    this.month,
    this.description,
    this.reason,
    this.isJoin,
  });

  /// copyWith メソッド
  Work copyWith({
    String? name,
    String? position,
    String? year,
    String? month,
    String? description,
    String? reason,
    bool? isJoin,
  }) {
    return Work(
      name: name ?? this.name,
      position: position ?? this.position,
      year: year ?? this.year,
      month: month ?? this.month,
      description: description ?? this.description,
      reason: reason ?? this.reason,
      isJoin: isJoin ?? this.isJoin,
    );
  }

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
  factory Work.fromMap(Map<String, dynamic> map) {
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

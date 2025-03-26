// /// 履歴書
// class Resume {
//   /// タイトル
//   final String? title;
//
//   /// 専攻
//   final String? major;
//
//   /// 入学時期 / 卒業時期（年）
//   final String? year;
//
//   /// 入学時期 / 卒業時期（月）
//   final String? month;
//
//   /// 入学 or 卒業
//   final bool? isJoin;
//
//   Resume({
//     this.name,
//     this.major,
//     this.year,
//     this.month,
//     this.isJoin,
//   });
//
//   /// copyWith メソッド
//   Resume copyWith({
//     String? name,
//     String? major,
//     String? year,
//     String? month,
//     bool? isJoin,
//   }) {
//     return Resume(
//       name: name ?? this.name,
//       major: major ?? this.major,
//       year: year ?? this.year,
//       month: month ?? this.month,
//       isJoin: isJoin ?? this.isJoin,
//     );
//   }
//
//   /// DB 等に保存する際に Map<String, dynamic> に変換する
//   Map<String, dynamic> toMap() {
//     return {
//       'name': name,
//       'major': major,
//       'year': year,
//       'month': month,
//       'isJoin': isJoin,
//     };
//   }
//
//   /// DB から読み込んだ Map<String, dynamic> から Resume を生成
//   factory Resume.fromMap(Map<String, dynamic> map) {
//     return Resume(
//       name: map['name'],
//       major: map['major'],
//       year: map['year'],
//       month: map['month'],
//       isJoin: map['isJoin'],
//     );
//   }
// }

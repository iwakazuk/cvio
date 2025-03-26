import 'package:isar/isar.dart';

import '../models/academic.dart';

part 'academic_doc.g.dart';

@collection
class AcademicDoc {
  AcademicDoc({
    required this.id,
    this.name,
    this.major,
    this.year,
    this.month,
    this.isJoin,
  });
  final int id;
  final String? name;
  final String? major;
  final String? year;
  final String? month;
  final bool? isJoin;

  Academic toDomain() {
    return Academic(
      name: name,
      major: major,
      year: year,
      month: month,
      isJoin: isJoin,
    );
  }

  static AcademicDoc fromDomain(Academic domain, int id) {
    return AcademicDoc(
      id: id,
      name: domain.name,
      major: domain.major,
      year: domain.year,
      month: domain.month,
      isJoin: domain.isJoin,
    );
  }
}

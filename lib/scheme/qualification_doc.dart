import 'package:isar/isar.dart';

import '../models/qualification.dart';

part 'qualification_doc.g.dart';

@collection
class QualificationDoc {
  QualificationDoc({
    required this.id,
    this.name,
    this.year,
    this.month,
  });
  final int id;
  final String? name;
  final String? year;
  final String? month;

  Qualification toDomain() {
    return Qualification(
      name: name,
      year: year,
      month: month,
    );
  }

  static QualificationDoc fromDomain(Qualification domain, int id) {
    return QualificationDoc(
      id: id,
      name: domain.name,
      year: domain.year,
      month: domain.month,
    );
  }
}

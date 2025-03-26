import 'package:isar/isar.dart';

import '../models/work.dart';

part 'work_doc.g.dart';

@collection
class WorkDoc {
  WorkDoc({
    required this.id,
    this.name,
    this.position,
    this.year,
    this.month,
    this.description,
    this.reason,
    this.isJoin,
  });

  @Id()
  final int id;
  final String? name;
  final String? position;
  final String? year;
  final String? month;
  final String? description;
  final String? reason;
  final bool? isJoin;

  Work toDomain() {
    return Work(
      name: name,
      position: position,
      year: year,
      month: month,
      description: description,
      reason: reason,
      isJoin: isJoin,
    );
  }

  static WorkDoc fromDomain(Work domain, int id) {
    return WorkDoc(
      id: id,
      name: domain.name,
      position: domain.position,
      year: domain.year,
      month: domain.month,
      description: domain.description,
      reason: domain.reason,
      isJoin: domain.isJoin,
    );
  }
}

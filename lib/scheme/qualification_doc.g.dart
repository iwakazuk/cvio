// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qualification_doc.dart';

// **************************************************************************
// _IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

extension GetQualificationDocCollection on Isar {
  IsarCollection<int, QualificationDoc> get qualificationDocs =>
      this.collection();
}

const QualificationDocSchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'QualificationDoc',
    idName: 'id',
    embedded: false,
    properties: [
      IsarPropertySchema(
        name: 'name',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'year',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'month',
        type: IsarType.string,
      ),
    ],
    indexes: [],
  ),
  converter: IsarObjectConverter<int, QualificationDoc>(
    serialize: serializeQualificationDoc,
    deserialize: deserializeQualificationDoc,
    deserializeProperty: deserializeQualificationDocProp,
  ),
  embeddedSchemas: [],
);

@isarProtected
int serializeQualificationDoc(IsarWriter writer, QualificationDoc object) {
  {
    final value = object.name;
    if (value == null) {
      IsarCore.writeNull(writer, 1);
    } else {
      IsarCore.writeString(writer, 1, value);
    }
  }
  {
    final value = object.year;
    if (value == null) {
      IsarCore.writeNull(writer, 2);
    } else {
      IsarCore.writeString(writer, 2, value);
    }
  }
  {
    final value = object.month;
    if (value == null) {
      IsarCore.writeNull(writer, 3);
    } else {
      IsarCore.writeString(writer, 3, value);
    }
  }
  return object.id;
}

@isarProtected
QualificationDoc deserializeQualificationDoc(IsarReader reader) {
  final int _id;
  _id = IsarCore.readId(reader);
  final String? _name;
  _name = IsarCore.readString(reader, 1);
  final String? _year;
  _year = IsarCore.readString(reader, 2);
  final String? _month;
  _month = IsarCore.readString(reader, 3);
  final object = QualificationDoc(
    id: _id,
    name: _name,
    year: _year,
    month: _month,
  );
  return object;
}

@isarProtected
dynamic deserializeQualificationDocProp(IsarReader reader, int property) {
  switch (property) {
    case 0:
      return IsarCore.readId(reader);
    case 1:
      return IsarCore.readString(reader, 1);
    case 2:
      return IsarCore.readString(reader, 2);
    case 3:
      return IsarCore.readString(reader, 3);
    default:
      throw ArgumentError('Unknown property: $property');
  }
}

sealed class _QualificationDocUpdate {
  bool call({
    required int id,
    String? name,
    String? year,
    String? month,
  });
}

class _QualificationDocUpdateImpl implements _QualificationDocUpdate {
  const _QualificationDocUpdateImpl(this.collection);

  final IsarCollection<int, QualificationDoc> collection;

  @override
  bool call({
    required int id,
    Object? name = ignore,
    Object? year = ignore,
    Object? month = ignore,
  }) {
    return collection.updateProperties([
          id
        ], {
          if (name != ignore) 1: name as String?,
          if (year != ignore) 2: year as String?,
          if (month != ignore) 3: month as String?,
        }) >
        0;
  }
}

sealed class _QualificationDocUpdateAll {
  int call({
    required List<int> id,
    String? name,
    String? year,
    String? month,
  });
}

class _QualificationDocUpdateAllImpl implements _QualificationDocUpdateAll {
  const _QualificationDocUpdateAllImpl(this.collection);

  final IsarCollection<int, QualificationDoc> collection;

  @override
  int call({
    required List<int> id,
    Object? name = ignore,
    Object? year = ignore,
    Object? month = ignore,
  }) {
    return collection.updateProperties(id, {
      if (name != ignore) 1: name as String?,
      if (year != ignore) 2: year as String?,
      if (month != ignore) 3: month as String?,
    });
  }
}

extension QualificationDocUpdate on IsarCollection<int, QualificationDoc> {
  _QualificationDocUpdate get update => _QualificationDocUpdateImpl(this);

  _QualificationDocUpdateAll get updateAll =>
      _QualificationDocUpdateAllImpl(this);
}

sealed class _QualificationDocQueryUpdate {
  int call({
    String? name,
    String? year,
    String? month,
  });
}

class _QualificationDocQueryUpdateImpl implements _QualificationDocQueryUpdate {
  const _QualificationDocQueryUpdateImpl(this.query, {this.limit});

  final IsarQuery<QualificationDoc> query;
  final int? limit;

  @override
  int call({
    Object? name = ignore,
    Object? year = ignore,
    Object? month = ignore,
  }) {
    return query.updateProperties(limit: limit, {
      if (name != ignore) 1: name as String?,
      if (year != ignore) 2: year as String?,
      if (month != ignore) 3: month as String?,
    });
  }
}

extension QualificationDocQueryUpdate on IsarQuery<QualificationDoc> {
  _QualificationDocQueryUpdate get updateFirst =>
      _QualificationDocQueryUpdateImpl(this, limit: 1);

  _QualificationDocQueryUpdate get updateAll =>
      _QualificationDocQueryUpdateImpl(this);
}

class _QualificationDocQueryBuilderUpdateImpl
    implements _QualificationDocQueryUpdate {
  const _QualificationDocQueryBuilderUpdateImpl(this.query, {this.limit});

  final QueryBuilder<QualificationDoc, QualificationDoc, QOperations> query;
  final int? limit;

  @override
  int call({
    Object? name = ignore,
    Object? year = ignore,
    Object? month = ignore,
  }) {
    final q = query.build();
    try {
      return q.updateProperties(limit: limit, {
        if (name != ignore) 1: name as String?,
        if (year != ignore) 2: year as String?,
        if (month != ignore) 3: month as String?,
      });
    } finally {
      q.close();
    }
  }
}

extension QualificationDocQueryBuilderUpdate
    on QueryBuilder<QualificationDoc, QualificationDoc, QOperations> {
  _QualificationDocQueryUpdate get updateFirst =>
      _QualificationDocQueryBuilderUpdateImpl(this, limit: 1);

  _QualificationDocQueryUpdate get updateAll =>
      _QualificationDocQueryBuilderUpdateImpl(this);
}

extension QualificationDocQueryFilter
    on QueryBuilder<QualificationDoc, QualificationDoc, QFilterCondition> {
  QueryBuilder<QualificationDoc, QualificationDoc, QAfterFilterCondition>
      idEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<QualificationDoc, QualificationDoc, QAfterFilterCondition>
      idGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<QualificationDoc, QualificationDoc, QAfterFilterCondition>
      idGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<QualificationDoc, QualificationDoc, QAfterFilterCondition>
      idLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<QualificationDoc, QualificationDoc, QAfterFilterCondition>
      idLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<QualificationDoc, QualificationDoc, QAfterFilterCondition>
      idBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 0,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<QualificationDoc, QualificationDoc, QAfterFilterCondition>
      nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 1));
    });
  }

  QueryBuilder<QualificationDoc, QualificationDoc, QAfterFilterCondition>
      nameIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 1));
    });
  }

  QueryBuilder<QualificationDoc, QualificationDoc, QAfterFilterCondition>
      nameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QualificationDoc, QualificationDoc, QAfterFilterCondition>
      nameGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QualificationDoc, QualificationDoc, QAfterFilterCondition>
      nameGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QualificationDoc, QualificationDoc, QAfterFilterCondition>
      nameLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QualificationDoc, QualificationDoc, QAfterFilterCondition>
      nameLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QualificationDoc, QualificationDoc, QAfterFilterCondition>
      nameBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 1,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QualificationDoc, QualificationDoc, QAfterFilterCondition>
      nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QualificationDoc, QualificationDoc, QAfterFilterCondition>
      nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QualificationDoc, QualificationDoc, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QualificationDoc, QualificationDoc, QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 1,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QualificationDoc, QualificationDoc, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<QualificationDoc, QualificationDoc, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<QualificationDoc, QualificationDoc, QAfterFilterCondition>
      yearIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 2));
    });
  }

  QueryBuilder<QualificationDoc, QualificationDoc, QAfterFilterCondition>
      yearIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 2));
    });
  }

  QueryBuilder<QualificationDoc, QualificationDoc, QAfterFilterCondition>
      yearEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QualificationDoc, QualificationDoc, QAfterFilterCondition>
      yearGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QualificationDoc, QualificationDoc, QAfterFilterCondition>
      yearGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QualificationDoc, QualificationDoc, QAfterFilterCondition>
      yearLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QualificationDoc, QualificationDoc, QAfterFilterCondition>
      yearLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QualificationDoc, QualificationDoc, QAfterFilterCondition>
      yearBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 2,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QualificationDoc, QualificationDoc, QAfterFilterCondition>
      yearStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QualificationDoc, QualificationDoc, QAfterFilterCondition>
      yearEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QualificationDoc, QualificationDoc, QAfterFilterCondition>
      yearContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QualificationDoc, QualificationDoc, QAfterFilterCondition>
      yearMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 2,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QualificationDoc, QualificationDoc, QAfterFilterCondition>
      yearIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 2,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<QualificationDoc, QualificationDoc, QAfterFilterCondition>
      yearIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 2,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<QualificationDoc, QualificationDoc, QAfterFilterCondition>
      monthIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 3));
    });
  }

  QueryBuilder<QualificationDoc, QualificationDoc, QAfterFilterCondition>
      monthIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 3));
    });
  }

  QueryBuilder<QualificationDoc, QualificationDoc, QAfterFilterCondition>
      monthEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QualificationDoc, QualificationDoc, QAfterFilterCondition>
      monthGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QualificationDoc, QualificationDoc, QAfterFilterCondition>
      monthGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QualificationDoc, QualificationDoc, QAfterFilterCondition>
      monthLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QualificationDoc, QualificationDoc, QAfterFilterCondition>
      monthLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QualificationDoc, QualificationDoc, QAfterFilterCondition>
      monthBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 3,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QualificationDoc, QualificationDoc, QAfterFilterCondition>
      monthStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QualificationDoc, QualificationDoc, QAfterFilterCondition>
      monthEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QualificationDoc, QualificationDoc, QAfterFilterCondition>
      monthContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QualificationDoc, QualificationDoc, QAfterFilterCondition>
      monthMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 3,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QualificationDoc, QualificationDoc, QAfterFilterCondition>
      monthIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 3,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<QualificationDoc, QualificationDoc, QAfterFilterCondition>
      monthIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 3,
          value: '',
        ),
      );
    });
  }
}

extension QualificationDocQueryObject
    on QueryBuilder<QualificationDoc, QualificationDoc, QFilterCondition> {}

extension QualificationDocQuerySortBy
    on QueryBuilder<QualificationDoc, QualificationDoc, QSortBy> {
  QueryBuilder<QualificationDoc, QualificationDoc, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<QualificationDoc, QualificationDoc, QAfterSortBy>
      sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<QualificationDoc, QualificationDoc, QAfterSortBy> sortByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<QualificationDoc, QualificationDoc, QAfterSortBy> sortByNameDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<QualificationDoc, QualificationDoc, QAfterSortBy> sortByYear(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        2,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<QualificationDoc, QualificationDoc, QAfterSortBy> sortByYearDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        2,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<QualificationDoc, QualificationDoc, QAfterSortBy> sortByMonth(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        3,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<QualificationDoc, QualificationDoc, QAfterSortBy>
      sortByMonthDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        3,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }
}

extension QualificationDocQuerySortThenBy
    on QueryBuilder<QualificationDoc, QualificationDoc, QSortThenBy> {
  QueryBuilder<QualificationDoc, QualificationDoc, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<QualificationDoc, QualificationDoc, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<QualificationDoc, QualificationDoc, QAfterSortBy> thenByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<QualificationDoc, QualificationDoc, QAfterSortBy> thenByNameDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<QualificationDoc, QualificationDoc, QAfterSortBy> thenByYear(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<QualificationDoc, QualificationDoc, QAfterSortBy> thenByYearDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<QualificationDoc, QualificationDoc, QAfterSortBy> thenByMonth(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<QualificationDoc, QualificationDoc, QAfterSortBy>
      thenByMonthDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }
}

extension QualificationDocQueryWhereDistinct
    on QueryBuilder<QualificationDoc, QualificationDoc, QDistinct> {
  QueryBuilder<QualificationDoc, QualificationDoc, QAfterDistinct>
      distinctByName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(1, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<QualificationDoc, QualificationDoc, QAfterDistinct>
      distinctByYear({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(2, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<QualificationDoc, QualificationDoc, QAfterDistinct>
      distinctByMonth({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(3, caseSensitive: caseSensitive);
    });
  }
}

extension QualificationDocQueryProperty1
    on QueryBuilder<QualificationDoc, QualificationDoc, QProperty> {
  QueryBuilder<QualificationDoc, int, QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<QualificationDoc, String?, QAfterProperty> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<QualificationDoc, String?, QAfterProperty> yearProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<QualificationDoc, String?, QAfterProperty> monthProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }
}

extension QualificationDocQueryProperty2<R>
    on QueryBuilder<QualificationDoc, R, QAfterProperty> {
  QueryBuilder<QualificationDoc, (R, int), QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<QualificationDoc, (R, String?), QAfterProperty> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<QualificationDoc, (R, String?), QAfterProperty> yearProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<QualificationDoc, (R, String?), QAfterProperty> monthProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }
}

extension QualificationDocQueryProperty3<R1, R2>
    on QueryBuilder<QualificationDoc, (R1, R2), QAfterProperty> {
  QueryBuilder<QualificationDoc, (R1, R2, int), QOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<QualificationDoc, (R1, R2, String?), QOperations>
      nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<QualificationDoc, (R1, R2, String?), QOperations>
      yearProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<QualificationDoc, (R1, R2, String?), QOperations>
      monthProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }
}

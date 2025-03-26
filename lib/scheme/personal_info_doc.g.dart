// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'personal_info_doc.dart';

// **************************************************************************
// _IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

extension GetPersonalInfoDocCollection on Isar {
  IsarCollection<int, PersonalInfoDoc> get personalInfoDocs =>
      this.collection();
}

const PersonalInfoDocSchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'PersonalInfoDoc',
    idName: 'id',
    embedded: false,
    properties: [
      IsarPropertySchema(
        name: 'lastName',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'firstName',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'lastNameKana',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'firstNameKana',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'email',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'emergencyEmail',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'phone',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'emergencyPhone',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'birthYear',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'birthMonth',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'birthDay',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'age',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'gender',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'postalCode',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'addressPrefecture',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'addressCity',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'addressStreet',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'addressBuilding',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'addressKana',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'emergencyPostalCode',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'emergencyAddressPrefecture',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'emergencyAddressCity',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'emergencyAddressStreet',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'emergencyAddressBuilding',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'emergencyAddressKana',
        type: IsarType.string,
      ),
    ],
    indexes: [],
  ),
  converter: IsarObjectConverter<int, PersonalInfoDoc>(
    serialize: serializePersonalInfoDoc,
    deserialize: deserializePersonalInfoDoc,
    deserializeProperty: deserializePersonalInfoDocProp,
  ),
  embeddedSchemas: [],
);

@isarProtected
int serializePersonalInfoDoc(IsarWriter writer, PersonalInfoDoc object) {
  {
    final value = object.lastName;
    if (value == null) {
      IsarCore.writeNull(writer, 1);
    } else {
      IsarCore.writeString(writer, 1, value);
    }
  }
  {
    final value = object.firstName;
    if (value == null) {
      IsarCore.writeNull(writer, 2);
    } else {
      IsarCore.writeString(writer, 2, value);
    }
  }
  {
    final value = object.lastNameKana;
    if (value == null) {
      IsarCore.writeNull(writer, 3);
    } else {
      IsarCore.writeString(writer, 3, value);
    }
  }
  {
    final value = object.firstNameKana;
    if (value == null) {
      IsarCore.writeNull(writer, 4);
    } else {
      IsarCore.writeString(writer, 4, value);
    }
  }
  {
    final value = object.email;
    if (value == null) {
      IsarCore.writeNull(writer, 5);
    } else {
      IsarCore.writeString(writer, 5, value);
    }
  }
  {
    final value = object.emergencyEmail;
    if (value == null) {
      IsarCore.writeNull(writer, 6);
    } else {
      IsarCore.writeString(writer, 6, value);
    }
  }
  {
    final value = object.phone;
    if (value == null) {
      IsarCore.writeNull(writer, 7);
    } else {
      IsarCore.writeString(writer, 7, value);
    }
  }
  {
    final value = object.emergencyPhone;
    if (value == null) {
      IsarCore.writeNull(writer, 8);
    } else {
      IsarCore.writeString(writer, 8, value);
    }
  }
  {
    final value = object.birthYear;
    if (value == null) {
      IsarCore.writeNull(writer, 9);
    } else {
      IsarCore.writeString(writer, 9, value);
    }
  }
  {
    final value = object.birthMonth;
    if (value == null) {
      IsarCore.writeNull(writer, 10);
    } else {
      IsarCore.writeString(writer, 10, value);
    }
  }
  {
    final value = object.birthDay;
    if (value == null) {
      IsarCore.writeNull(writer, 11);
    } else {
      IsarCore.writeString(writer, 11, value);
    }
  }
  {
    final value = object.age;
    if (value == null) {
      IsarCore.writeNull(writer, 12);
    } else {
      IsarCore.writeString(writer, 12, value);
    }
  }
  {
    final value = object.gender;
    if (value == null) {
      IsarCore.writeNull(writer, 13);
    } else {
      IsarCore.writeString(writer, 13, value);
    }
  }
  {
    final value = object.postalCode;
    if (value == null) {
      IsarCore.writeNull(writer, 14);
    } else {
      IsarCore.writeString(writer, 14, value);
    }
  }
  {
    final value = object.addressPrefecture;
    if (value == null) {
      IsarCore.writeNull(writer, 15);
    } else {
      IsarCore.writeString(writer, 15, value);
    }
  }
  {
    final value = object.addressCity;
    if (value == null) {
      IsarCore.writeNull(writer, 16);
    } else {
      IsarCore.writeString(writer, 16, value);
    }
  }
  {
    final value = object.addressStreet;
    if (value == null) {
      IsarCore.writeNull(writer, 17);
    } else {
      IsarCore.writeString(writer, 17, value);
    }
  }
  {
    final value = object.addressBuilding;
    if (value == null) {
      IsarCore.writeNull(writer, 18);
    } else {
      IsarCore.writeString(writer, 18, value);
    }
  }
  {
    final value = object.addressKana;
    if (value == null) {
      IsarCore.writeNull(writer, 19);
    } else {
      IsarCore.writeString(writer, 19, value);
    }
  }
  {
    final value = object.emergencyPostalCode;
    if (value == null) {
      IsarCore.writeNull(writer, 20);
    } else {
      IsarCore.writeString(writer, 20, value);
    }
  }
  {
    final value = object.emergencyAddressPrefecture;
    if (value == null) {
      IsarCore.writeNull(writer, 21);
    } else {
      IsarCore.writeString(writer, 21, value);
    }
  }
  {
    final value = object.emergencyAddressCity;
    if (value == null) {
      IsarCore.writeNull(writer, 22);
    } else {
      IsarCore.writeString(writer, 22, value);
    }
  }
  {
    final value = object.emergencyAddressStreet;
    if (value == null) {
      IsarCore.writeNull(writer, 23);
    } else {
      IsarCore.writeString(writer, 23, value);
    }
  }
  {
    final value = object.emergencyAddressBuilding;
    if (value == null) {
      IsarCore.writeNull(writer, 24);
    } else {
      IsarCore.writeString(writer, 24, value);
    }
  }
  {
    final value = object.emergencyAddressKana;
    if (value == null) {
      IsarCore.writeNull(writer, 25);
    } else {
      IsarCore.writeString(writer, 25, value);
    }
  }
  return object.id;
}

@isarProtected
PersonalInfoDoc deserializePersonalInfoDoc(IsarReader reader) {
  final int _id;
  _id = IsarCore.readId(reader);
  final String? _lastName;
  _lastName = IsarCore.readString(reader, 1);
  final String? _firstName;
  _firstName = IsarCore.readString(reader, 2);
  final String? _lastNameKana;
  _lastNameKana = IsarCore.readString(reader, 3);
  final String? _firstNameKana;
  _firstNameKana = IsarCore.readString(reader, 4);
  final String? _email;
  _email = IsarCore.readString(reader, 5);
  final String? _emergencyEmail;
  _emergencyEmail = IsarCore.readString(reader, 6);
  final String? _phone;
  _phone = IsarCore.readString(reader, 7);
  final String? _emergencyPhone;
  _emergencyPhone = IsarCore.readString(reader, 8);
  final String? _birthYear;
  _birthYear = IsarCore.readString(reader, 9);
  final String? _birthMonth;
  _birthMonth = IsarCore.readString(reader, 10);
  final String? _birthDay;
  _birthDay = IsarCore.readString(reader, 11);
  final String? _age;
  _age = IsarCore.readString(reader, 12);
  final String? _gender;
  _gender = IsarCore.readString(reader, 13);
  final String? _postalCode;
  _postalCode = IsarCore.readString(reader, 14);
  final String? _addressPrefecture;
  _addressPrefecture = IsarCore.readString(reader, 15);
  final String? _addressCity;
  _addressCity = IsarCore.readString(reader, 16);
  final String? _addressStreet;
  _addressStreet = IsarCore.readString(reader, 17);
  final String? _addressBuilding;
  _addressBuilding = IsarCore.readString(reader, 18);
  final String? _addressKana;
  _addressKana = IsarCore.readString(reader, 19);
  final String? _emergencyPostalCode;
  _emergencyPostalCode = IsarCore.readString(reader, 20);
  final String? _emergencyAddressPrefecture;
  _emergencyAddressPrefecture = IsarCore.readString(reader, 21);
  final String? _emergencyAddressCity;
  _emergencyAddressCity = IsarCore.readString(reader, 22);
  final String? _emergencyAddressStreet;
  _emergencyAddressStreet = IsarCore.readString(reader, 23);
  final String? _emergencyAddressBuilding;
  _emergencyAddressBuilding = IsarCore.readString(reader, 24);
  final String? _emergencyAddressKana;
  _emergencyAddressKana = IsarCore.readString(reader, 25);
  final object = PersonalInfoDoc(
    id: _id,
    lastName: _lastName,
    firstName: _firstName,
    lastNameKana: _lastNameKana,
    firstNameKana: _firstNameKana,
    email: _email,
    emergencyEmail: _emergencyEmail,
    phone: _phone,
    emergencyPhone: _emergencyPhone,
    birthYear: _birthYear,
    birthMonth: _birthMonth,
    birthDay: _birthDay,
    age: _age,
    gender: _gender,
    postalCode: _postalCode,
    addressPrefecture: _addressPrefecture,
    addressCity: _addressCity,
    addressStreet: _addressStreet,
    addressBuilding: _addressBuilding,
    addressKana: _addressKana,
    emergencyPostalCode: _emergencyPostalCode,
    emergencyAddressPrefecture: _emergencyAddressPrefecture,
    emergencyAddressCity: _emergencyAddressCity,
    emergencyAddressStreet: _emergencyAddressStreet,
    emergencyAddressBuilding: _emergencyAddressBuilding,
    emergencyAddressKana: _emergencyAddressKana,
  );
  return object;
}

@isarProtected
dynamic deserializePersonalInfoDocProp(IsarReader reader, int property) {
  switch (property) {
    case 0:
      return IsarCore.readId(reader);
    case 1:
      return IsarCore.readString(reader, 1);
    case 2:
      return IsarCore.readString(reader, 2);
    case 3:
      return IsarCore.readString(reader, 3);
    case 4:
      return IsarCore.readString(reader, 4);
    case 5:
      return IsarCore.readString(reader, 5);
    case 6:
      return IsarCore.readString(reader, 6);
    case 7:
      return IsarCore.readString(reader, 7);
    case 8:
      return IsarCore.readString(reader, 8);
    case 9:
      return IsarCore.readString(reader, 9);
    case 10:
      return IsarCore.readString(reader, 10);
    case 11:
      return IsarCore.readString(reader, 11);
    case 12:
      return IsarCore.readString(reader, 12);
    case 13:
      return IsarCore.readString(reader, 13);
    case 14:
      return IsarCore.readString(reader, 14);
    case 15:
      return IsarCore.readString(reader, 15);
    case 16:
      return IsarCore.readString(reader, 16);
    case 17:
      return IsarCore.readString(reader, 17);
    case 18:
      return IsarCore.readString(reader, 18);
    case 19:
      return IsarCore.readString(reader, 19);
    case 20:
      return IsarCore.readString(reader, 20);
    case 21:
      return IsarCore.readString(reader, 21);
    case 22:
      return IsarCore.readString(reader, 22);
    case 23:
      return IsarCore.readString(reader, 23);
    case 24:
      return IsarCore.readString(reader, 24);
    case 25:
      return IsarCore.readString(reader, 25);
    default:
      throw ArgumentError('Unknown property: $property');
  }
}

sealed class _PersonalInfoDocUpdate {
  bool call({
    required int id,
    String? lastName,
    String? firstName,
    String? lastNameKana,
    String? firstNameKana,
    String? email,
    String? emergencyEmail,
    String? phone,
    String? emergencyPhone,
    String? birthYear,
    String? birthMonth,
    String? birthDay,
    String? age,
    String? gender,
    String? postalCode,
    String? addressPrefecture,
    String? addressCity,
    String? addressStreet,
    String? addressBuilding,
    String? addressKana,
    String? emergencyPostalCode,
    String? emergencyAddressPrefecture,
    String? emergencyAddressCity,
    String? emergencyAddressStreet,
    String? emergencyAddressBuilding,
    String? emergencyAddressKana,
  });
}

class _PersonalInfoDocUpdateImpl implements _PersonalInfoDocUpdate {
  const _PersonalInfoDocUpdateImpl(this.collection);

  final IsarCollection<int, PersonalInfoDoc> collection;

  @override
  bool call({
    required int id,
    Object? lastName = ignore,
    Object? firstName = ignore,
    Object? lastNameKana = ignore,
    Object? firstNameKana = ignore,
    Object? email = ignore,
    Object? emergencyEmail = ignore,
    Object? phone = ignore,
    Object? emergencyPhone = ignore,
    Object? birthYear = ignore,
    Object? birthMonth = ignore,
    Object? birthDay = ignore,
    Object? age = ignore,
    Object? gender = ignore,
    Object? postalCode = ignore,
    Object? addressPrefecture = ignore,
    Object? addressCity = ignore,
    Object? addressStreet = ignore,
    Object? addressBuilding = ignore,
    Object? addressKana = ignore,
    Object? emergencyPostalCode = ignore,
    Object? emergencyAddressPrefecture = ignore,
    Object? emergencyAddressCity = ignore,
    Object? emergencyAddressStreet = ignore,
    Object? emergencyAddressBuilding = ignore,
    Object? emergencyAddressKana = ignore,
  }) {
    return collection.updateProperties([
          id
        ], {
          if (lastName != ignore) 1: lastName as String?,
          if (firstName != ignore) 2: firstName as String?,
          if (lastNameKana != ignore) 3: lastNameKana as String?,
          if (firstNameKana != ignore) 4: firstNameKana as String?,
          if (email != ignore) 5: email as String?,
          if (emergencyEmail != ignore) 6: emergencyEmail as String?,
          if (phone != ignore) 7: phone as String?,
          if (emergencyPhone != ignore) 8: emergencyPhone as String?,
          if (birthYear != ignore) 9: birthYear as String?,
          if (birthMonth != ignore) 10: birthMonth as String?,
          if (birthDay != ignore) 11: birthDay as String?,
          if (age != ignore) 12: age as String?,
          if (gender != ignore) 13: gender as String?,
          if (postalCode != ignore) 14: postalCode as String?,
          if (addressPrefecture != ignore) 15: addressPrefecture as String?,
          if (addressCity != ignore) 16: addressCity as String?,
          if (addressStreet != ignore) 17: addressStreet as String?,
          if (addressBuilding != ignore) 18: addressBuilding as String?,
          if (addressKana != ignore) 19: addressKana as String?,
          if (emergencyPostalCode != ignore) 20: emergencyPostalCode as String?,
          if (emergencyAddressPrefecture != ignore)
            21: emergencyAddressPrefecture as String?,
          if (emergencyAddressCity != ignore)
            22: emergencyAddressCity as String?,
          if (emergencyAddressStreet != ignore)
            23: emergencyAddressStreet as String?,
          if (emergencyAddressBuilding != ignore)
            24: emergencyAddressBuilding as String?,
          if (emergencyAddressKana != ignore)
            25: emergencyAddressKana as String?,
        }) >
        0;
  }
}

sealed class _PersonalInfoDocUpdateAll {
  int call({
    required List<int> id,
    String? lastName,
    String? firstName,
    String? lastNameKana,
    String? firstNameKana,
    String? email,
    String? emergencyEmail,
    String? phone,
    String? emergencyPhone,
    String? birthYear,
    String? birthMonth,
    String? birthDay,
    String? age,
    String? gender,
    String? postalCode,
    String? addressPrefecture,
    String? addressCity,
    String? addressStreet,
    String? addressBuilding,
    String? addressKana,
    String? emergencyPostalCode,
    String? emergencyAddressPrefecture,
    String? emergencyAddressCity,
    String? emergencyAddressStreet,
    String? emergencyAddressBuilding,
    String? emergencyAddressKana,
  });
}

class _PersonalInfoDocUpdateAllImpl implements _PersonalInfoDocUpdateAll {
  const _PersonalInfoDocUpdateAllImpl(this.collection);

  final IsarCollection<int, PersonalInfoDoc> collection;

  @override
  int call({
    required List<int> id,
    Object? lastName = ignore,
    Object? firstName = ignore,
    Object? lastNameKana = ignore,
    Object? firstNameKana = ignore,
    Object? email = ignore,
    Object? emergencyEmail = ignore,
    Object? phone = ignore,
    Object? emergencyPhone = ignore,
    Object? birthYear = ignore,
    Object? birthMonth = ignore,
    Object? birthDay = ignore,
    Object? age = ignore,
    Object? gender = ignore,
    Object? postalCode = ignore,
    Object? addressPrefecture = ignore,
    Object? addressCity = ignore,
    Object? addressStreet = ignore,
    Object? addressBuilding = ignore,
    Object? addressKana = ignore,
    Object? emergencyPostalCode = ignore,
    Object? emergencyAddressPrefecture = ignore,
    Object? emergencyAddressCity = ignore,
    Object? emergencyAddressStreet = ignore,
    Object? emergencyAddressBuilding = ignore,
    Object? emergencyAddressKana = ignore,
  }) {
    return collection.updateProperties(id, {
      if (lastName != ignore) 1: lastName as String?,
      if (firstName != ignore) 2: firstName as String?,
      if (lastNameKana != ignore) 3: lastNameKana as String?,
      if (firstNameKana != ignore) 4: firstNameKana as String?,
      if (email != ignore) 5: email as String?,
      if (emergencyEmail != ignore) 6: emergencyEmail as String?,
      if (phone != ignore) 7: phone as String?,
      if (emergencyPhone != ignore) 8: emergencyPhone as String?,
      if (birthYear != ignore) 9: birthYear as String?,
      if (birthMonth != ignore) 10: birthMonth as String?,
      if (birthDay != ignore) 11: birthDay as String?,
      if (age != ignore) 12: age as String?,
      if (gender != ignore) 13: gender as String?,
      if (postalCode != ignore) 14: postalCode as String?,
      if (addressPrefecture != ignore) 15: addressPrefecture as String?,
      if (addressCity != ignore) 16: addressCity as String?,
      if (addressStreet != ignore) 17: addressStreet as String?,
      if (addressBuilding != ignore) 18: addressBuilding as String?,
      if (addressKana != ignore) 19: addressKana as String?,
      if (emergencyPostalCode != ignore) 20: emergencyPostalCode as String?,
      if (emergencyAddressPrefecture != ignore)
        21: emergencyAddressPrefecture as String?,
      if (emergencyAddressCity != ignore) 22: emergencyAddressCity as String?,
      if (emergencyAddressStreet != ignore)
        23: emergencyAddressStreet as String?,
      if (emergencyAddressBuilding != ignore)
        24: emergencyAddressBuilding as String?,
      if (emergencyAddressKana != ignore) 25: emergencyAddressKana as String?,
    });
  }
}

extension PersonalInfoDocUpdate on IsarCollection<int, PersonalInfoDoc> {
  _PersonalInfoDocUpdate get update => _PersonalInfoDocUpdateImpl(this);

  _PersonalInfoDocUpdateAll get updateAll =>
      _PersonalInfoDocUpdateAllImpl(this);
}

sealed class _PersonalInfoDocQueryUpdate {
  int call({
    String? lastName,
    String? firstName,
    String? lastNameKana,
    String? firstNameKana,
    String? email,
    String? emergencyEmail,
    String? phone,
    String? emergencyPhone,
    String? birthYear,
    String? birthMonth,
    String? birthDay,
    String? age,
    String? gender,
    String? postalCode,
    String? addressPrefecture,
    String? addressCity,
    String? addressStreet,
    String? addressBuilding,
    String? addressKana,
    String? emergencyPostalCode,
    String? emergencyAddressPrefecture,
    String? emergencyAddressCity,
    String? emergencyAddressStreet,
    String? emergencyAddressBuilding,
    String? emergencyAddressKana,
  });
}

class _PersonalInfoDocQueryUpdateImpl implements _PersonalInfoDocQueryUpdate {
  const _PersonalInfoDocQueryUpdateImpl(this.query, {this.limit});

  final IsarQuery<PersonalInfoDoc> query;
  final int? limit;

  @override
  int call({
    Object? lastName = ignore,
    Object? firstName = ignore,
    Object? lastNameKana = ignore,
    Object? firstNameKana = ignore,
    Object? email = ignore,
    Object? emergencyEmail = ignore,
    Object? phone = ignore,
    Object? emergencyPhone = ignore,
    Object? birthYear = ignore,
    Object? birthMonth = ignore,
    Object? birthDay = ignore,
    Object? age = ignore,
    Object? gender = ignore,
    Object? postalCode = ignore,
    Object? addressPrefecture = ignore,
    Object? addressCity = ignore,
    Object? addressStreet = ignore,
    Object? addressBuilding = ignore,
    Object? addressKana = ignore,
    Object? emergencyPostalCode = ignore,
    Object? emergencyAddressPrefecture = ignore,
    Object? emergencyAddressCity = ignore,
    Object? emergencyAddressStreet = ignore,
    Object? emergencyAddressBuilding = ignore,
    Object? emergencyAddressKana = ignore,
  }) {
    return query.updateProperties(limit: limit, {
      if (lastName != ignore) 1: lastName as String?,
      if (firstName != ignore) 2: firstName as String?,
      if (lastNameKana != ignore) 3: lastNameKana as String?,
      if (firstNameKana != ignore) 4: firstNameKana as String?,
      if (email != ignore) 5: email as String?,
      if (emergencyEmail != ignore) 6: emergencyEmail as String?,
      if (phone != ignore) 7: phone as String?,
      if (emergencyPhone != ignore) 8: emergencyPhone as String?,
      if (birthYear != ignore) 9: birthYear as String?,
      if (birthMonth != ignore) 10: birthMonth as String?,
      if (birthDay != ignore) 11: birthDay as String?,
      if (age != ignore) 12: age as String?,
      if (gender != ignore) 13: gender as String?,
      if (postalCode != ignore) 14: postalCode as String?,
      if (addressPrefecture != ignore) 15: addressPrefecture as String?,
      if (addressCity != ignore) 16: addressCity as String?,
      if (addressStreet != ignore) 17: addressStreet as String?,
      if (addressBuilding != ignore) 18: addressBuilding as String?,
      if (addressKana != ignore) 19: addressKana as String?,
      if (emergencyPostalCode != ignore) 20: emergencyPostalCode as String?,
      if (emergencyAddressPrefecture != ignore)
        21: emergencyAddressPrefecture as String?,
      if (emergencyAddressCity != ignore) 22: emergencyAddressCity as String?,
      if (emergencyAddressStreet != ignore)
        23: emergencyAddressStreet as String?,
      if (emergencyAddressBuilding != ignore)
        24: emergencyAddressBuilding as String?,
      if (emergencyAddressKana != ignore) 25: emergencyAddressKana as String?,
    });
  }
}

extension PersonalInfoDocQueryUpdate on IsarQuery<PersonalInfoDoc> {
  _PersonalInfoDocQueryUpdate get updateFirst =>
      _PersonalInfoDocQueryUpdateImpl(this, limit: 1);

  _PersonalInfoDocQueryUpdate get updateAll =>
      _PersonalInfoDocQueryUpdateImpl(this);
}

class _PersonalInfoDocQueryBuilderUpdateImpl
    implements _PersonalInfoDocQueryUpdate {
  const _PersonalInfoDocQueryBuilderUpdateImpl(this.query, {this.limit});

  final QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QOperations> query;
  final int? limit;

  @override
  int call({
    Object? lastName = ignore,
    Object? firstName = ignore,
    Object? lastNameKana = ignore,
    Object? firstNameKana = ignore,
    Object? email = ignore,
    Object? emergencyEmail = ignore,
    Object? phone = ignore,
    Object? emergencyPhone = ignore,
    Object? birthYear = ignore,
    Object? birthMonth = ignore,
    Object? birthDay = ignore,
    Object? age = ignore,
    Object? gender = ignore,
    Object? postalCode = ignore,
    Object? addressPrefecture = ignore,
    Object? addressCity = ignore,
    Object? addressStreet = ignore,
    Object? addressBuilding = ignore,
    Object? addressKana = ignore,
    Object? emergencyPostalCode = ignore,
    Object? emergencyAddressPrefecture = ignore,
    Object? emergencyAddressCity = ignore,
    Object? emergencyAddressStreet = ignore,
    Object? emergencyAddressBuilding = ignore,
    Object? emergencyAddressKana = ignore,
  }) {
    final q = query.build();
    try {
      return q.updateProperties(limit: limit, {
        if (lastName != ignore) 1: lastName as String?,
        if (firstName != ignore) 2: firstName as String?,
        if (lastNameKana != ignore) 3: lastNameKana as String?,
        if (firstNameKana != ignore) 4: firstNameKana as String?,
        if (email != ignore) 5: email as String?,
        if (emergencyEmail != ignore) 6: emergencyEmail as String?,
        if (phone != ignore) 7: phone as String?,
        if (emergencyPhone != ignore) 8: emergencyPhone as String?,
        if (birthYear != ignore) 9: birthYear as String?,
        if (birthMonth != ignore) 10: birthMonth as String?,
        if (birthDay != ignore) 11: birthDay as String?,
        if (age != ignore) 12: age as String?,
        if (gender != ignore) 13: gender as String?,
        if (postalCode != ignore) 14: postalCode as String?,
        if (addressPrefecture != ignore) 15: addressPrefecture as String?,
        if (addressCity != ignore) 16: addressCity as String?,
        if (addressStreet != ignore) 17: addressStreet as String?,
        if (addressBuilding != ignore) 18: addressBuilding as String?,
        if (addressKana != ignore) 19: addressKana as String?,
        if (emergencyPostalCode != ignore) 20: emergencyPostalCode as String?,
        if (emergencyAddressPrefecture != ignore)
          21: emergencyAddressPrefecture as String?,
        if (emergencyAddressCity != ignore) 22: emergencyAddressCity as String?,
        if (emergencyAddressStreet != ignore)
          23: emergencyAddressStreet as String?,
        if (emergencyAddressBuilding != ignore)
          24: emergencyAddressBuilding as String?,
        if (emergencyAddressKana != ignore) 25: emergencyAddressKana as String?,
      });
    } finally {
      q.close();
    }
  }
}

extension PersonalInfoDocQueryBuilderUpdate
    on QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QOperations> {
  _PersonalInfoDocQueryUpdate get updateFirst =>
      _PersonalInfoDocQueryBuilderUpdateImpl(this, limit: 1);

  _PersonalInfoDocQueryUpdate get updateAll =>
      _PersonalInfoDocQueryBuilderUpdateImpl(this);
}

extension PersonalInfoDocQueryFilter
    on QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QFilterCondition> {
  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
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

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
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

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
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

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
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

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
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

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
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

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      lastNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 1));
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      lastNameIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 1));
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      lastNameEqualTo(
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

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      lastNameGreaterThan(
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

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      lastNameGreaterThanOrEqualTo(
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

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      lastNameLessThan(
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

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      lastNameLessThanOrEqualTo(
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

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      lastNameBetween(
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

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      lastNameStartsWith(
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

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      lastNameEndsWith(
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

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      lastNameContains(String value, {bool caseSensitive = true}) {
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

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      lastNameMatches(String pattern, {bool caseSensitive = true}) {
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

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      lastNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      lastNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      firstNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 2));
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      firstNameIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 2));
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      firstNameEqualTo(
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

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      firstNameGreaterThan(
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

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      firstNameGreaterThanOrEqualTo(
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

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      firstNameLessThan(
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

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      firstNameLessThanOrEqualTo(
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

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      firstNameBetween(
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

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      firstNameStartsWith(
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

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      firstNameEndsWith(
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

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      firstNameContains(String value, {bool caseSensitive = true}) {
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

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      firstNameMatches(String pattern, {bool caseSensitive = true}) {
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

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      firstNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 2,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      firstNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 2,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      lastNameKanaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 3));
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      lastNameKanaIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 3));
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      lastNameKanaEqualTo(
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

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      lastNameKanaGreaterThan(
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

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      lastNameKanaGreaterThanOrEqualTo(
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

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      lastNameKanaLessThan(
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

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      lastNameKanaLessThanOrEqualTo(
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

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      lastNameKanaBetween(
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

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      lastNameKanaStartsWith(
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

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      lastNameKanaEndsWith(
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

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      lastNameKanaContains(String value, {bool caseSensitive = true}) {
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

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      lastNameKanaMatches(String pattern, {bool caseSensitive = true}) {
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

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      lastNameKanaIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 3,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      lastNameKanaIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 3,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      firstNameKanaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 4));
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      firstNameKanaIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 4));
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      firstNameKanaEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      firstNameKanaGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      firstNameKanaGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      firstNameKanaLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      firstNameKanaLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      firstNameKanaBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 4,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      firstNameKanaStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      firstNameKanaEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      firstNameKanaContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      firstNameKanaMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 4,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      firstNameKanaIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 4,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      firstNameKanaIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 4,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emailIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 5));
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emailIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 5));
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emailEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emailGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emailGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emailLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emailLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emailBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 5,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emailStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emailEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emailContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emailMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 5,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emailIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 5,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emailIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 5,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyEmailIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 6));
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyEmailIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 6));
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyEmailEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 6,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyEmailGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 6,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyEmailGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 6,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyEmailLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 6,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyEmailLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 6,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyEmailBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 6,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyEmailStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 6,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyEmailEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 6,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyEmailContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 6,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyEmailMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 6,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyEmailIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 6,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyEmailIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 6,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      phoneIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 7));
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      phoneIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 7));
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      phoneEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 7,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      phoneGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 7,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      phoneGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 7,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      phoneLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 7,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      phoneLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 7,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      phoneBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 7,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      phoneStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 7,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      phoneEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 7,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      phoneContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 7,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      phoneMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 7,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      phoneIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 7,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      phoneIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 7,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyPhoneIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 8));
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyPhoneIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 8));
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyPhoneEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 8,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyPhoneGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 8,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyPhoneGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 8,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyPhoneLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 8,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyPhoneLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 8,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyPhoneBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 8,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyPhoneStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 8,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyPhoneEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 8,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyPhoneContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 8,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyPhoneMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 8,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyPhoneIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 8,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyPhoneIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 8,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      birthYearIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 9));
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      birthYearIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 9));
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      birthYearEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 9,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      birthYearGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 9,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      birthYearGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 9,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      birthYearLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 9,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      birthYearLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 9,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      birthYearBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 9,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      birthYearStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 9,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      birthYearEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 9,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      birthYearContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 9,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      birthYearMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 9,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      birthYearIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 9,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      birthYearIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 9,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      birthMonthIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 10));
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      birthMonthIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 10));
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      birthMonthEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 10,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      birthMonthGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 10,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      birthMonthGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 10,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      birthMonthLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 10,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      birthMonthLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 10,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      birthMonthBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 10,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      birthMonthStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 10,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      birthMonthEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 10,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      birthMonthContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 10,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      birthMonthMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 10,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      birthMonthIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 10,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      birthMonthIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 10,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      birthDayIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 11));
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      birthDayIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 11));
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      birthDayEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 11,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      birthDayGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 11,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      birthDayGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 11,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      birthDayLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 11,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      birthDayLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 11,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      birthDayBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 11,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      birthDayStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 11,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      birthDayEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 11,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      birthDayContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 11,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      birthDayMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 11,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      birthDayIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 11,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      birthDayIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 11,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      ageIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 12));
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      ageIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 12));
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      ageEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 12,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      ageGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 12,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      ageGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 12,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      ageLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 12,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      ageLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 12,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      ageBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 12,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      ageStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 12,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      ageEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 12,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      ageContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 12,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      ageMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 12,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      ageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 12,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      ageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 12,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      genderIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 13));
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      genderIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 13));
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      genderEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 13,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      genderGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 13,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      genderGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 13,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      genderLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 13,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      genderLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 13,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      genderBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 13,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      genderStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 13,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      genderEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 13,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      genderContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 13,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      genderMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 13,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      genderIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 13,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      genderIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 13,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      postalCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 14));
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      postalCodeIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 14));
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      postalCodeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 14,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      postalCodeGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 14,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      postalCodeGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 14,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      postalCodeLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 14,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      postalCodeLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 14,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      postalCodeBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 14,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      postalCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 14,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      postalCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 14,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      postalCodeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 14,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      postalCodeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 14,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      postalCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 14,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      postalCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 14,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      addressPrefectureIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 15));
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      addressPrefectureIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 15));
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      addressPrefectureEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 15,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      addressPrefectureGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 15,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      addressPrefectureGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 15,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      addressPrefectureLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 15,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      addressPrefectureLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 15,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      addressPrefectureBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 15,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      addressPrefectureStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 15,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      addressPrefectureEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 15,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      addressPrefectureContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 15,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      addressPrefectureMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 15,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      addressPrefectureIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 15,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      addressPrefectureIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 15,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      addressCityIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 16));
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      addressCityIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 16));
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      addressCityEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 16,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      addressCityGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 16,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      addressCityGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 16,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      addressCityLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 16,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      addressCityLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 16,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      addressCityBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 16,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      addressCityStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 16,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      addressCityEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 16,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      addressCityContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 16,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      addressCityMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 16,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      addressCityIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 16,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      addressCityIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 16,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      addressStreetIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 17));
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      addressStreetIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 17));
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      addressStreetEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 17,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      addressStreetGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 17,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      addressStreetGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 17,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      addressStreetLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 17,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      addressStreetLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 17,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      addressStreetBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 17,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      addressStreetStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 17,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      addressStreetEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 17,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      addressStreetContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 17,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      addressStreetMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 17,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      addressStreetIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 17,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      addressStreetIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 17,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      addressBuildingIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 18));
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      addressBuildingIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 18));
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      addressBuildingEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 18,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      addressBuildingGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 18,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      addressBuildingGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 18,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      addressBuildingLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 18,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      addressBuildingLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 18,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      addressBuildingBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 18,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      addressBuildingStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 18,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      addressBuildingEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 18,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      addressBuildingContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 18,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      addressBuildingMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 18,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      addressBuildingIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 18,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      addressBuildingIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 18,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      addressKanaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 19));
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      addressKanaIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 19));
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      addressKanaEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 19,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      addressKanaGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 19,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      addressKanaGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 19,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      addressKanaLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 19,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      addressKanaLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 19,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      addressKanaBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 19,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      addressKanaStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 19,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      addressKanaEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 19,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      addressKanaContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 19,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      addressKanaMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 19,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      addressKanaIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 19,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      addressKanaIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 19,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyPostalCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 20));
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyPostalCodeIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 20));
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyPostalCodeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 20,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyPostalCodeGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 20,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyPostalCodeGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 20,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyPostalCodeLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 20,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyPostalCodeLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 20,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyPostalCodeBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 20,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyPostalCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 20,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyPostalCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 20,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyPostalCodeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 20,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyPostalCodeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 20,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyPostalCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 20,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyPostalCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 20,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyAddressPrefectureIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 21));
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyAddressPrefectureIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 21));
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyAddressPrefectureEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 21,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyAddressPrefectureGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 21,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyAddressPrefectureGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 21,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyAddressPrefectureLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 21,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyAddressPrefectureLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 21,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyAddressPrefectureBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 21,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyAddressPrefectureStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 21,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyAddressPrefectureEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 21,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyAddressPrefectureContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 21,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyAddressPrefectureMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 21,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyAddressPrefectureIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 21,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyAddressPrefectureIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 21,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyAddressCityIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 22));
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyAddressCityIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 22));
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyAddressCityEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 22,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyAddressCityGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 22,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyAddressCityGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 22,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyAddressCityLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 22,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyAddressCityLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 22,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyAddressCityBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 22,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyAddressCityStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 22,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyAddressCityEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 22,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyAddressCityContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 22,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyAddressCityMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 22,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyAddressCityIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 22,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyAddressCityIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 22,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyAddressStreetIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 23));
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyAddressStreetIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 23));
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyAddressStreetEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 23,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyAddressStreetGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 23,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyAddressStreetGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 23,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyAddressStreetLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 23,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyAddressStreetLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 23,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyAddressStreetBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 23,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyAddressStreetStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 23,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyAddressStreetEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 23,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyAddressStreetContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 23,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyAddressStreetMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 23,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyAddressStreetIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 23,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyAddressStreetIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 23,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyAddressBuildingIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 24));
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyAddressBuildingIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 24));
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyAddressBuildingEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 24,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyAddressBuildingGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 24,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyAddressBuildingGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 24,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyAddressBuildingLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 24,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyAddressBuildingLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 24,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyAddressBuildingBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 24,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyAddressBuildingStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 24,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyAddressBuildingEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 24,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyAddressBuildingContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 24,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyAddressBuildingMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 24,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyAddressBuildingIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 24,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyAddressBuildingIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 24,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyAddressKanaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 25));
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyAddressKanaIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 25));
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyAddressKanaEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 25,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyAddressKanaGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 25,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyAddressKanaGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 25,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyAddressKanaLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 25,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyAddressKanaLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 25,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyAddressKanaBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 25,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyAddressKanaStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 25,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyAddressKanaEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 25,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyAddressKanaContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 25,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyAddressKanaMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 25,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyAddressKanaIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 25,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterFilterCondition>
      emergencyAddressKanaIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 25,
          value: '',
        ),
      );
    });
  }
}

extension PersonalInfoDocQueryObject
    on QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QFilterCondition> {}

extension PersonalInfoDocQuerySortBy
    on QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QSortBy> {
  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy> sortByLastName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy>
      sortByLastNameDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy> sortByFirstName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        2,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy>
      sortByFirstNameDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        2,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy>
      sortByLastNameKana({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        3,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy>
      sortByLastNameKanaDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        3,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy>
      sortByFirstNameKana({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        4,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy>
      sortByFirstNameKanaDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        4,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy> sortByEmail(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        5,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy> sortByEmailDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        5,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy>
      sortByEmergencyEmail({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        6,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy>
      sortByEmergencyEmailDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        6,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy> sortByPhone(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        7,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy> sortByPhoneDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        7,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy>
      sortByEmergencyPhone({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        8,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy>
      sortByEmergencyPhoneDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        8,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy> sortByBirthYear(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        9,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy>
      sortByBirthYearDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        9,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy> sortByBirthMonth(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        10,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy>
      sortByBirthMonthDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        10,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy> sortByBirthDay(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        11,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy>
      sortByBirthDayDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        11,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy> sortByAge(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        12,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy> sortByAgeDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        12,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy> sortByGender(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        13,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy> sortByGenderDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        13,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy> sortByPostalCode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        14,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy>
      sortByPostalCodeDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        14,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy>
      sortByAddressPrefecture({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        15,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy>
      sortByAddressPrefectureDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        15,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy>
      sortByAddressCity({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        16,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy>
      sortByAddressCityDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        16,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy>
      sortByAddressStreet({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        17,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy>
      sortByAddressStreetDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        17,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy>
      sortByAddressBuilding({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        18,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy>
      sortByAddressBuildingDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        18,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy>
      sortByAddressKana({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        19,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy>
      sortByAddressKanaDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        19,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy>
      sortByEmergencyPostalCode({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        20,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy>
      sortByEmergencyPostalCodeDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        20,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy>
      sortByEmergencyAddressPrefecture({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        21,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy>
      sortByEmergencyAddressPrefectureDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        21,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy>
      sortByEmergencyAddressCity({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        22,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy>
      sortByEmergencyAddressCityDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        22,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy>
      sortByEmergencyAddressStreet({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        23,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy>
      sortByEmergencyAddressStreetDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        23,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy>
      sortByEmergencyAddressBuilding({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        24,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy>
      sortByEmergencyAddressBuildingDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        24,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy>
      sortByEmergencyAddressKana({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        25,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy>
      sortByEmergencyAddressKanaDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        25,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }
}

extension PersonalInfoDocQuerySortThenBy
    on QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QSortThenBy> {
  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy> thenByLastName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy>
      thenByLastNameDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy> thenByFirstName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy>
      thenByFirstNameDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy>
      thenByLastNameKana({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy>
      thenByLastNameKanaDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy>
      thenByFirstNameKana({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy>
      thenByFirstNameKanaDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy> thenByEmail(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy> thenByEmailDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy>
      thenByEmergencyEmail({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(6, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy>
      thenByEmergencyEmailDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(6, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy> thenByPhone(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(7, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy> thenByPhoneDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(7, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy>
      thenByEmergencyPhone({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(8, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy>
      thenByEmergencyPhoneDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(8, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy> thenByBirthYear(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(9, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy>
      thenByBirthYearDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(9, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy> thenByBirthMonth(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(10, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy>
      thenByBirthMonthDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(10, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy> thenByBirthDay(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(11, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy>
      thenByBirthDayDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(11, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy> thenByAge(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(12, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy> thenByAgeDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(12, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy> thenByGender(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(13, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy> thenByGenderDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(13, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy> thenByPostalCode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(14, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy>
      thenByPostalCodeDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(14, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy>
      thenByAddressPrefecture({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(15, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy>
      thenByAddressPrefectureDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(15, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy>
      thenByAddressCity({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(16, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy>
      thenByAddressCityDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(16, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy>
      thenByAddressStreet({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(17, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy>
      thenByAddressStreetDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(17, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy>
      thenByAddressBuilding({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(18, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy>
      thenByAddressBuildingDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(18, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy>
      thenByAddressKana({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(19, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy>
      thenByAddressKanaDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(19, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy>
      thenByEmergencyPostalCode({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(20, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy>
      thenByEmergencyPostalCodeDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(20, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy>
      thenByEmergencyAddressPrefecture({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(21, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy>
      thenByEmergencyAddressPrefectureDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(21, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy>
      thenByEmergencyAddressCity({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(22, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy>
      thenByEmergencyAddressCityDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(22, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy>
      thenByEmergencyAddressStreet({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(23, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy>
      thenByEmergencyAddressStreetDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(23, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy>
      thenByEmergencyAddressBuilding({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(24, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy>
      thenByEmergencyAddressBuildingDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(24, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy>
      thenByEmergencyAddressKana({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(25, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterSortBy>
      thenByEmergencyAddressKanaDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(25, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }
}

extension PersonalInfoDocQueryWhereDistinct
    on QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QDistinct> {
  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterDistinct>
      distinctByLastName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(1, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterDistinct>
      distinctByFirstName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(2, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterDistinct>
      distinctByLastNameKana({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(3, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterDistinct>
      distinctByFirstNameKana({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(4, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterDistinct>
      distinctByEmail({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(5, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterDistinct>
      distinctByEmergencyEmail({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(6, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterDistinct>
      distinctByPhone({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(7, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterDistinct>
      distinctByEmergencyPhone({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(8, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterDistinct>
      distinctByBirthYear({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(9, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterDistinct>
      distinctByBirthMonth({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(10, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterDistinct>
      distinctByBirthDay({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(11, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterDistinct> distinctByAge(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(12, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterDistinct>
      distinctByGender({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(13, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterDistinct>
      distinctByPostalCode({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(14, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterDistinct>
      distinctByAddressPrefecture({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(15, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterDistinct>
      distinctByAddressCity({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(16, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterDistinct>
      distinctByAddressStreet({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(17, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterDistinct>
      distinctByAddressBuilding({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(18, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterDistinct>
      distinctByAddressKana({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(19, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterDistinct>
      distinctByEmergencyPostalCode({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(20, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterDistinct>
      distinctByEmergencyAddressPrefecture({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(21, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterDistinct>
      distinctByEmergencyAddressCity({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(22, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterDistinct>
      distinctByEmergencyAddressStreet({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(23, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterDistinct>
      distinctByEmergencyAddressBuilding({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(24, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QAfterDistinct>
      distinctByEmergencyAddressKana({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(25, caseSensitive: caseSensitive);
    });
  }
}

extension PersonalInfoDocQueryProperty1
    on QueryBuilder<PersonalInfoDoc, PersonalInfoDoc, QProperty> {
  QueryBuilder<PersonalInfoDoc, int, QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<PersonalInfoDoc, String?, QAfterProperty> lastNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<PersonalInfoDoc, String?, QAfterProperty> firstNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<PersonalInfoDoc, String?, QAfterProperty>
      lastNameKanaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<PersonalInfoDoc, String?, QAfterProperty>
      firstNameKanaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<PersonalInfoDoc, String?, QAfterProperty> emailProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<PersonalInfoDoc, String?, QAfterProperty>
      emergencyEmailProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(6);
    });
  }

  QueryBuilder<PersonalInfoDoc, String?, QAfterProperty> phoneProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(7);
    });
  }

  QueryBuilder<PersonalInfoDoc, String?, QAfterProperty>
      emergencyPhoneProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(8);
    });
  }

  QueryBuilder<PersonalInfoDoc, String?, QAfterProperty> birthYearProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(9);
    });
  }

  QueryBuilder<PersonalInfoDoc, String?, QAfterProperty> birthMonthProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(10);
    });
  }

  QueryBuilder<PersonalInfoDoc, String?, QAfterProperty> birthDayProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(11);
    });
  }

  QueryBuilder<PersonalInfoDoc, String?, QAfterProperty> ageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(12);
    });
  }

  QueryBuilder<PersonalInfoDoc, String?, QAfterProperty> genderProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(13);
    });
  }

  QueryBuilder<PersonalInfoDoc, String?, QAfterProperty> postalCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(14);
    });
  }

  QueryBuilder<PersonalInfoDoc, String?, QAfterProperty>
      addressPrefectureProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(15);
    });
  }

  QueryBuilder<PersonalInfoDoc, String?, QAfterProperty> addressCityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(16);
    });
  }

  QueryBuilder<PersonalInfoDoc, String?, QAfterProperty>
      addressStreetProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(17);
    });
  }

  QueryBuilder<PersonalInfoDoc, String?, QAfterProperty>
      addressBuildingProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(18);
    });
  }

  QueryBuilder<PersonalInfoDoc, String?, QAfterProperty> addressKanaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(19);
    });
  }

  QueryBuilder<PersonalInfoDoc, String?, QAfterProperty>
      emergencyPostalCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(20);
    });
  }

  QueryBuilder<PersonalInfoDoc, String?, QAfterProperty>
      emergencyAddressPrefectureProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(21);
    });
  }

  QueryBuilder<PersonalInfoDoc, String?, QAfterProperty>
      emergencyAddressCityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(22);
    });
  }

  QueryBuilder<PersonalInfoDoc, String?, QAfterProperty>
      emergencyAddressStreetProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(23);
    });
  }

  QueryBuilder<PersonalInfoDoc, String?, QAfterProperty>
      emergencyAddressBuildingProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(24);
    });
  }

  QueryBuilder<PersonalInfoDoc, String?, QAfterProperty>
      emergencyAddressKanaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(25);
    });
  }
}

extension PersonalInfoDocQueryProperty2<R>
    on QueryBuilder<PersonalInfoDoc, R, QAfterProperty> {
  QueryBuilder<PersonalInfoDoc, (R, int), QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<PersonalInfoDoc, (R, String?), QAfterProperty>
      lastNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<PersonalInfoDoc, (R, String?), QAfterProperty>
      firstNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<PersonalInfoDoc, (R, String?), QAfterProperty>
      lastNameKanaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<PersonalInfoDoc, (R, String?), QAfterProperty>
      firstNameKanaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<PersonalInfoDoc, (R, String?), QAfterProperty> emailProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<PersonalInfoDoc, (R, String?), QAfterProperty>
      emergencyEmailProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(6);
    });
  }

  QueryBuilder<PersonalInfoDoc, (R, String?), QAfterProperty> phoneProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(7);
    });
  }

  QueryBuilder<PersonalInfoDoc, (R, String?), QAfterProperty>
      emergencyPhoneProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(8);
    });
  }

  QueryBuilder<PersonalInfoDoc, (R, String?), QAfterProperty>
      birthYearProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(9);
    });
  }

  QueryBuilder<PersonalInfoDoc, (R, String?), QAfterProperty>
      birthMonthProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(10);
    });
  }

  QueryBuilder<PersonalInfoDoc, (R, String?), QAfterProperty>
      birthDayProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(11);
    });
  }

  QueryBuilder<PersonalInfoDoc, (R, String?), QAfterProperty> ageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(12);
    });
  }

  QueryBuilder<PersonalInfoDoc, (R, String?), QAfterProperty> genderProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(13);
    });
  }

  QueryBuilder<PersonalInfoDoc, (R, String?), QAfterProperty>
      postalCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(14);
    });
  }

  QueryBuilder<PersonalInfoDoc, (R, String?), QAfterProperty>
      addressPrefectureProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(15);
    });
  }

  QueryBuilder<PersonalInfoDoc, (R, String?), QAfterProperty>
      addressCityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(16);
    });
  }

  QueryBuilder<PersonalInfoDoc, (R, String?), QAfterProperty>
      addressStreetProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(17);
    });
  }

  QueryBuilder<PersonalInfoDoc, (R, String?), QAfterProperty>
      addressBuildingProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(18);
    });
  }

  QueryBuilder<PersonalInfoDoc, (R, String?), QAfterProperty>
      addressKanaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(19);
    });
  }

  QueryBuilder<PersonalInfoDoc, (R, String?), QAfterProperty>
      emergencyPostalCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(20);
    });
  }

  QueryBuilder<PersonalInfoDoc, (R, String?), QAfterProperty>
      emergencyAddressPrefectureProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(21);
    });
  }

  QueryBuilder<PersonalInfoDoc, (R, String?), QAfterProperty>
      emergencyAddressCityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(22);
    });
  }

  QueryBuilder<PersonalInfoDoc, (R, String?), QAfterProperty>
      emergencyAddressStreetProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(23);
    });
  }

  QueryBuilder<PersonalInfoDoc, (R, String?), QAfterProperty>
      emergencyAddressBuildingProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(24);
    });
  }

  QueryBuilder<PersonalInfoDoc, (R, String?), QAfterProperty>
      emergencyAddressKanaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(25);
    });
  }
}

extension PersonalInfoDocQueryProperty3<R1, R2>
    on QueryBuilder<PersonalInfoDoc, (R1, R2), QAfterProperty> {
  QueryBuilder<PersonalInfoDoc, (R1, R2, int), QOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<PersonalInfoDoc, (R1, R2, String?), QOperations>
      lastNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<PersonalInfoDoc, (R1, R2, String?), QOperations>
      firstNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<PersonalInfoDoc, (R1, R2, String?), QOperations>
      lastNameKanaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<PersonalInfoDoc, (R1, R2, String?), QOperations>
      firstNameKanaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<PersonalInfoDoc, (R1, R2, String?), QOperations>
      emailProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<PersonalInfoDoc, (R1, R2, String?), QOperations>
      emergencyEmailProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(6);
    });
  }

  QueryBuilder<PersonalInfoDoc, (R1, R2, String?), QOperations>
      phoneProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(7);
    });
  }

  QueryBuilder<PersonalInfoDoc, (R1, R2, String?), QOperations>
      emergencyPhoneProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(8);
    });
  }

  QueryBuilder<PersonalInfoDoc, (R1, R2, String?), QOperations>
      birthYearProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(9);
    });
  }

  QueryBuilder<PersonalInfoDoc, (R1, R2, String?), QOperations>
      birthMonthProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(10);
    });
  }

  QueryBuilder<PersonalInfoDoc, (R1, R2, String?), QOperations>
      birthDayProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(11);
    });
  }

  QueryBuilder<PersonalInfoDoc, (R1, R2, String?), QOperations> ageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(12);
    });
  }

  QueryBuilder<PersonalInfoDoc, (R1, R2, String?), QOperations>
      genderProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(13);
    });
  }

  QueryBuilder<PersonalInfoDoc, (R1, R2, String?), QOperations>
      postalCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(14);
    });
  }

  QueryBuilder<PersonalInfoDoc, (R1, R2, String?), QOperations>
      addressPrefectureProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(15);
    });
  }

  QueryBuilder<PersonalInfoDoc, (R1, R2, String?), QOperations>
      addressCityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(16);
    });
  }

  QueryBuilder<PersonalInfoDoc, (R1, R2, String?), QOperations>
      addressStreetProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(17);
    });
  }

  QueryBuilder<PersonalInfoDoc, (R1, R2, String?), QOperations>
      addressBuildingProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(18);
    });
  }

  QueryBuilder<PersonalInfoDoc, (R1, R2, String?), QOperations>
      addressKanaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(19);
    });
  }

  QueryBuilder<PersonalInfoDoc, (R1, R2, String?), QOperations>
      emergencyPostalCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(20);
    });
  }

  QueryBuilder<PersonalInfoDoc, (R1, R2, String?), QOperations>
      emergencyAddressPrefectureProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(21);
    });
  }

  QueryBuilder<PersonalInfoDoc, (R1, R2, String?), QOperations>
      emergencyAddressCityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(22);
    });
  }

  QueryBuilder<PersonalInfoDoc, (R1, R2, String?), QOperations>
      emergencyAddressStreetProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(23);
    });
  }

  QueryBuilder<PersonalInfoDoc, (R1, R2, String?), QOperations>
      emergencyAddressBuildingProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(24);
    });
  }

  QueryBuilder<PersonalInfoDoc, (R1, R2, String?), QOperations>
      emergencyAddressKanaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(25);
    });
  }
}

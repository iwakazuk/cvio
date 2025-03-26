import 'package:isar/isar.dart';

import '../models/personal_info.dart';

part 'personal_info_doc.g.dart';

@collection
class PersonalInfoDoc {
  PersonalInfoDoc({
    required this.id,
    this.lastName,
    this.firstName,
    this.lastNameKana,
    this.firstNameKana,
    this.email,
    this.emergencyEmail,
    this.phone,
    this.emergencyPhone,
    this.birthYear,
    this.birthMonth,
    this.birthDay,
    this.age,
    this.gender,
    this.postalCode,
    this.addressPrefecture,
    this.addressCity,
    this.addressStreet,
    this.addressBuilding,
    this.addressKana,
    this.emergencyPostalCode,
    this.emergencyAddressPrefecture,
    this.emergencyAddressCity,
    this.emergencyAddressStreet,
    this.emergencyAddressBuilding,
    this.emergencyAddressKana,
  });

  @Id()
  final int id;
  final String? lastName;
  final String? firstName;
  final String? lastNameKana;
  final String? firstNameKana;
  final String? email;
  final String? emergencyEmail;
  final String? phone;
  final String? emergencyPhone;
  final String? birthYear;
  final String? birthMonth;
  final String? birthDay;
  final String? age;
  final String? gender;
  final String? postalCode;
  final String? addressPrefecture;
  final String? addressCity;
  final String? addressStreet;
  final String? addressBuilding;
  final String? addressKana;
  final String? emergencyPostalCode;
  final String? emergencyAddressPrefecture;
  final String? emergencyAddressCity;
  final String? emergencyAddressStreet;
  final String? emergencyAddressBuilding;
  final String? emergencyAddressKana;

  PersonalInfo toDomain() {
    return PersonalInfo(
      lastName: this.lastName,
      firstName: this.firstName,
      lastNameKana: this.lastNameKana,
      firstNameKana: this.firstNameKana,
      email: this.email,
      emergencyEmail: this.emergencyEmail,
      phone: this.phone,
      emergencyPhone: this.emergencyPhone,
      birthYear: this.birthYear,
      birthMonth: this.birthMonth,
      birthDay: this.birthDay,
      age: this.age,
      gender: this.gender,
      postalCode: this.postalCode,
      addressPrefecture: this.addressPrefecture,
      addressCity: this.addressCity,
      addressStreet: this.addressStreet,
      addressBuilding: this.addressBuilding,
      addressKana: this.addressKana,
      emergencyPostalCode: this.emergencyPostalCode,
      emergencyAddressPrefecture: this.emergencyAddressPrefecture,
      emergencyAddressCity: this.emergencyAddressCity,
      emergencyAddressStreet: this.emergencyAddressStreet,
      emergencyAddressBuilding: this.emergencyAddressBuilding,
      emergencyAddressKana: this.emergencyAddressKana,
    );
  }

  static PersonalInfoDoc fromDomain(PersonalInfo personalInfo, int id) {
    return PersonalInfoDoc(
      id: id,
      lastName: personalInfo.lastName,
      firstName: personalInfo.firstName,
      lastNameKana: personalInfo.lastNameKana,
      firstNameKana: personalInfo.firstNameKana,
      email: personalInfo.email,
      emergencyEmail: personalInfo.emergencyEmail,
      phone: personalInfo.phone,
      emergencyPhone: personalInfo.emergencyPhone,
      birthYear: personalInfo.birthYear,
      birthMonth: personalInfo.birthMonth,
      birthDay: personalInfo.birthDay,
      age: personalInfo.age,
      gender: personalInfo.gender,
      postalCode: personalInfo.postalCode,
      addressPrefecture: personalInfo.addressPrefecture,
      addressCity: personalInfo.addressCity,
      addressStreet: personalInfo.addressStreet,
      addressBuilding: personalInfo.addressBuilding,
      addressKana: personalInfo.addressKana,
      emergencyPostalCode: personalInfo.emergencyPostalCode,
      emergencyAddressPrefecture: personalInfo.emergencyAddressPrefecture,
      emergencyAddressCity: personalInfo.emergencyAddressCity,
      emergencyAddressStreet: personalInfo.emergencyAddressStreet,
      emergencyAddressBuilding: personalInfo.emergencyAddressBuilding,
      emergencyAddressKana: personalInfo.emergencyAddressKana,
    );
  }
}

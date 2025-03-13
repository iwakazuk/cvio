/// 個人情報
class PersonalInfo {
  /// 氏
  final String? lastName;

  /// 名
  final String? firstName;

  /// 氏ふりがな
  final String? lastNameKana;

  /// 名ふりがな
  final String? firstNameKana;

  /// メールアドレス
  final String? email;

  /// 緊急メールアドレス
  final String? emergencyEmail;

  /// 電話番号（090）
  final String? phone;

  /// 緊急電話番号（090） - nullable
  final String? emergencyPhone;

  /// 生年月日1 (年)
  final String? birthYear;

  /// 生年月日2 (月)
  final String? birthMonth;

  /// 生年月日3 (日)
  final String? birthDay;

  /// 年齢
  final String? age;

  /// 性別
  final String? gender;

  /// 郵便番号
  final String? postalCode;

  /// 住所(都道府県)
  final String? addressPrefecture;

  /// 住所(市区町村)
  final String? addressCity;

  /// 住所(番地)
  final String? addressStreet;

  /// 住所(マンション・建物名)
  final String? addressBuilding;

  /// 住所ふりがな
  final String? addressKana;

  /// 緊急郵便番号 - nullable
  final String? emergencyPostalCode;

  /// 緊急住所(都道府県) - nullable
  final String? emergencyAddressPrefecture;

  /// 緊急住所(市区町村) - nullable
  final String? emergencyAddressCity;

  /// 緊急住所(番地) - nullable
  final String? emergencyAddressStreet;

  /// 緊急住所(マンション・建物名) - nullable
  final String? emergencyAddressBuilding;

  /// 緊急住所ふりがな - nullable
  final String? emergencyAddressKana;

  PersonalInfo({
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

  /// copyWith メソッド
  PersonalInfo copyWith({
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
  }) {
    return PersonalInfo(
      lastName: lastName ?? this.lastName,
      firstName: firstName ?? this.firstName,
      lastNameKana: lastNameKana ?? this.lastNameKana,
      firstNameKana: firstNameKana ?? this.firstNameKana,
      email: email ?? this.email,
      emergencyEmail: emergencyEmail ?? this.emergencyEmail,
      phone: phone ?? this.phone,
      emergencyPhone: emergencyPhone ?? this.emergencyPhone,
      birthYear: birthYear ?? this.birthYear,
      birthMonth: birthMonth ?? this.birthMonth,
      birthDay: birthDay ?? this.birthDay,
      age: age ?? this.age,
      gender: gender ?? this.gender,
      postalCode: postalCode ?? this.postalCode,
      addressPrefecture: addressPrefecture ?? this.addressPrefecture,
      addressCity: addressCity ?? this.addressCity,
      addressStreet: addressStreet ?? this.addressStreet,
      addressBuilding: addressBuilding ?? this.addressBuilding,
      addressKana: addressKana ?? this.addressKana,
      emergencyPostalCode: emergencyPostalCode ?? this.emergencyPostalCode,
      emergencyAddressPrefecture:
          emergencyAddressPrefecture ?? this.emergencyAddressPrefecture,
      emergencyAddressCity: emergencyAddressCity ?? this.emergencyAddressCity,
      emergencyAddressStreet:
          emergencyAddressStreet ?? this.emergencyAddressStreet,
      emergencyAddressBuilding:
          emergencyAddressBuilding ?? this.emergencyAddressBuilding,
      emergencyAddressKana: emergencyAddressKana ?? this.emergencyAddressKana,
    );
  }

  /// DB 等に保存する際に Map<String, dynamic> に変換する
  Map<String, dynamic> toMap() {
    return {
      'lastName': lastName,
      'firstName': firstName,
      'lastNameKana': lastNameKana,
      'firstNameKana': firstNameKana,
      'email': email,
      'emergencyEmail': emergencyEmail,
      'phone': phone,
      'emergencyPhone': emergencyPhone,
      'birthYear': birthYear,
      'birthMonth': birthMonth,
      'birthDay': birthDay,
      'age': age,
      'gender': gender,
      'postalCode': postalCode,
      'addressPrefecture': addressPrefecture,
      'addressCity': addressCity,
      'addressStreet': addressStreet,
      'addressBuilding': addressBuilding,
      'addressKana': addressKana,
      'emergencyPostalCode': emergencyPostalCode,
      'emergencyAddressPrefecture': emergencyAddressPrefecture,
      'emergencyAddressCity': emergencyAddressCity,
      'emergencyAddressStreet': emergencyAddressStreet,
      'emergencyAddressBuilding': emergencyAddressBuilding,
      'emergencyAddressKana': emergencyAddressKana,
    };
  }

  /// DB から読み込んだ Map<String, dynamic> から PersonalInfo を生成
  factory PersonalInfo.fromMap(Map<String, dynamic> map) {
    return PersonalInfo(
      lastName: map['lastName'],
      firstName: map['firstName'],
      lastNameKana: map['lastNameKana'],
      firstNameKana: map['firstNameKana'],
      email: map['email'],
      emergencyEmail: map['emergencyEmail'],
      phone: map['phone'],
      emergencyPhone: map['emergencyPhone'],
      birthYear: map['birthYear'],
      birthMonth: map['birthMonth'],
      birthDay: map['birthDay'],
      age: map['age'],
      gender: map['gender'],
      postalCode: map['postalCode'],
      addressPrefecture: map['addressPrefecture'],
      addressCity: map['addressCity'],
      addressStreet: map['addressStreet'],
      addressBuilding: map['addressBuilding'],
      addressKana: map['addressKana'],
      emergencyPostalCode: map['emergencyPostalCode'],
      emergencyAddressPrefecture: map['emergencyAddressPrefecture'],
      emergencyAddressCity: map['emergencyAddressCity'],
      emergencyAddressStreet: map['emergencyAddressStreet'],
      emergencyAddressBuilding: map['emergencyAddressBuilding'],
      emergencyAddressKana: map['emergencyAddressKana'],
    );
  }
}

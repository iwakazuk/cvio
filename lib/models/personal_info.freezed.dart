// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'personal_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PersonalInfo {
  /// 証明写真用画像ファイルのパス
  String? get image;

  /// 氏
  String? get lastName;

  /// 名
  String? get firstName;

  /// 氏ふりがな
  String? get lastNameKana;

  /// 名ふりがな
  String? get firstNameKana;

  /// メールアドレス
  String? get email;

  /// 緊急メールアドレス
  String? get emergencyEmail;

  /// 電話番号
  String? get phone;

  /// 緊急電話番号
  String? get emergencyPhone;

  /// 生年月日1 (年)
  String? get birthYear;

  /// 生年月日2 (月)
  String? get birthMonth;

  /// 生年月日3 (日)
  String? get birthDay;

  /// 年齢
  String? get age;

  /// 性別
  String? get gender;

  /// 郵便番号
  String? get postalCode;

  /// 住所(都道府県)
  String? get addressPrefecture;

  /// 住所(市区町村)
  String? get addressCity;

  /// 住所(番地)
  String? get addressStreet;

  /// 住所(マンション・建物名)
  String? get addressBuilding;

  /// 住所ふりがな
  String? get addressKana;

  /// 緊急郵便番号 - nullable
  String? get emergencyPostalCode;

  /// 緊急住所(都道府県) - nullable
  String? get emergencyAddressPrefecture;

  /// 緊急住所(市区町村) - nullable
  String? get emergencyAddressCity;

  /// 緊急住所(番地) - nullable
  String? get emergencyAddressStreet;

  /// 緊急住所(マンション・建物名) - nullable
  String? get emergencyAddressBuilding;

  /// 緊急住所ふりがな - nullable
  String? get emergencyAddressKana;

  /// Create a copy of PersonalInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PersonalInfoCopyWith<PersonalInfo> get copyWith =>
      _$PersonalInfoCopyWithImpl<PersonalInfo>(
          this as PersonalInfo, _$identity);

  /// Serializes this PersonalInfo to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PersonalInfo &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastNameKana, lastNameKana) ||
                other.lastNameKana == lastNameKana) &&
            (identical(other.firstNameKana, firstNameKana) ||
                other.firstNameKana == firstNameKana) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.emergencyEmail, emergencyEmail) ||
                other.emergencyEmail == emergencyEmail) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.emergencyPhone, emergencyPhone) ||
                other.emergencyPhone == emergencyPhone) &&
            (identical(other.birthYear, birthYear) ||
                other.birthYear == birthYear) &&
            (identical(other.birthMonth, birthMonth) ||
                other.birthMonth == birthMonth) &&
            (identical(other.birthDay, birthDay) ||
                other.birthDay == birthDay) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.postalCode, postalCode) ||
                other.postalCode == postalCode) &&
            (identical(other.addressPrefecture, addressPrefecture) ||
                other.addressPrefecture == addressPrefecture) &&
            (identical(other.addressCity, addressCity) ||
                other.addressCity == addressCity) &&
            (identical(other.addressStreet, addressStreet) ||
                other.addressStreet == addressStreet) &&
            (identical(other.addressBuilding, addressBuilding) ||
                other.addressBuilding == addressBuilding) &&
            (identical(other.addressKana, addressKana) ||
                other.addressKana == addressKana) &&
            (identical(other.emergencyPostalCode, emergencyPostalCode) ||
                other.emergencyPostalCode == emergencyPostalCode) &&
            (identical(other.emergencyAddressPrefecture,
                    emergencyAddressPrefecture) ||
                other.emergencyAddressPrefecture ==
                    emergencyAddressPrefecture) &&
            (identical(other.emergencyAddressCity, emergencyAddressCity) ||
                other.emergencyAddressCity == emergencyAddressCity) &&
            (identical(other.emergencyAddressStreet, emergencyAddressStreet) ||
                other.emergencyAddressStreet == emergencyAddressStreet) &&
            (identical(
                    other.emergencyAddressBuilding, emergencyAddressBuilding) ||
                other.emergencyAddressBuilding == emergencyAddressBuilding) &&
            (identical(other.emergencyAddressKana, emergencyAddressKana) ||
                other.emergencyAddressKana == emergencyAddressKana));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        image,
        lastName,
        firstName,
        lastNameKana,
        firstNameKana,
        email,
        emergencyEmail,
        phone,
        emergencyPhone,
        birthYear,
        birthMonth,
        birthDay,
        age,
        gender,
        postalCode,
        addressPrefecture,
        addressCity,
        addressStreet,
        addressBuilding,
        addressKana,
        emergencyPostalCode,
        emergencyAddressPrefecture,
        emergencyAddressCity,
        emergencyAddressStreet,
        emergencyAddressBuilding,
        emergencyAddressKana
      ]);

  @override
  String toString() {
    return 'PersonalInfo(image: $image, lastName: $lastName, firstName: $firstName, lastNameKana: $lastNameKana, firstNameKana: $firstNameKana, email: $email, emergencyEmail: $emergencyEmail, phone: $phone, emergencyPhone: $emergencyPhone, birthYear: $birthYear, birthMonth: $birthMonth, birthDay: $birthDay, age: $age, gender: $gender, postalCode: $postalCode, addressPrefecture: $addressPrefecture, addressCity: $addressCity, addressStreet: $addressStreet, addressBuilding: $addressBuilding, addressKana: $addressKana, emergencyPostalCode: $emergencyPostalCode, emergencyAddressPrefecture: $emergencyAddressPrefecture, emergencyAddressCity: $emergencyAddressCity, emergencyAddressStreet: $emergencyAddressStreet, emergencyAddressBuilding: $emergencyAddressBuilding, emergencyAddressKana: $emergencyAddressKana)';
  }
}

/// @nodoc
abstract mixin class $PersonalInfoCopyWith<$Res> {
  factory $PersonalInfoCopyWith(
          PersonalInfo value, $Res Function(PersonalInfo) _then) =
      _$PersonalInfoCopyWithImpl;
  @useResult
  $Res call(
      {String? image,
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
      String? emergencyAddressKana});
}

/// @nodoc
class _$PersonalInfoCopyWithImpl<$Res> implements $PersonalInfoCopyWith<$Res> {
  _$PersonalInfoCopyWithImpl(this._self, this._then);

  final PersonalInfo _self;
  final $Res Function(PersonalInfo) _then;

  /// Create a copy of PersonalInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
    Object? lastName = freezed,
    Object? firstName = freezed,
    Object? lastNameKana = freezed,
    Object? firstNameKana = freezed,
    Object? email = freezed,
    Object? emergencyEmail = freezed,
    Object? phone = freezed,
    Object? emergencyPhone = freezed,
    Object? birthYear = freezed,
    Object? birthMonth = freezed,
    Object? birthDay = freezed,
    Object? age = freezed,
    Object? gender = freezed,
    Object? postalCode = freezed,
    Object? addressPrefecture = freezed,
    Object? addressCity = freezed,
    Object? addressStreet = freezed,
    Object? addressBuilding = freezed,
    Object? addressKana = freezed,
    Object? emergencyPostalCode = freezed,
    Object? emergencyAddressPrefecture = freezed,
    Object? emergencyAddressCity = freezed,
    Object? emergencyAddressStreet = freezed,
    Object? emergencyAddressBuilding = freezed,
    Object? emergencyAddressKana = freezed,
  }) {
    return _then(_self.copyWith(
      image: freezed == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastNameKana: freezed == lastNameKana
          ? _self.lastNameKana
          : lastNameKana // ignore: cast_nullable_to_non_nullable
              as String?,
      firstNameKana: freezed == firstNameKana
          ? _self.firstNameKana
          : firstNameKana // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      emergencyEmail: freezed == emergencyEmail
          ? _self.emergencyEmail
          : emergencyEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      emergencyPhone: freezed == emergencyPhone
          ? _self.emergencyPhone
          : emergencyPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      birthYear: freezed == birthYear
          ? _self.birthYear
          : birthYear // ignore: cast_nullable_to_non_nullable
              as String?,
      birthMonth: freezed == birthMonth
          ? _self.birthMonth
          : birthMonth // ignore: cast_nullable_to_non_nullable
              as String?,
      birthDay: freezed == birthDay
          ? _self.birthDay
          : birthDay // ignore: cast_nullable_to_non_nullable
              as String?,
      age: freezed == age
          ? _self.age
          : age // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _self.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      postalCode: freezed == postalCode
          ? _self.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String?,
      addressPrefecture: freezed == addressPrefecture
          ? _self.addressPrefecture
          : addressPrefecture // ignore: cast_nullable_to_non_nullable
              as String?,
      addressCity: freezed == addressCity
          ? _self.addressCity
          : addressCity // ignore: cast_nullable_to_non_nullable
              as String?,
      addressStreet: freezed == addressStreet
          ? _self.addressStreet
          : addressStreet // ignore: cast_nullable_to_non_nullable
              as String?,
      addressBuilding: freezed == addressBuilding
          ? _self.addressBuilding
          : addressBuilding // ignore: cast_nullable_to_non_nullable
              as String?,
      addressKana: freezed == addressKana
          ? _self.addressKana
          : addressKana // ignore: cast_nullable_to_non_nullable
              as String?,
      emergencyPostalCode: freezed == emergencyPostalCode
          ? _self.emergencyPostalCode
          : emergencyPostalCode // ignore: cast_nullable_to_non_nullable
              as String?,
      emergencyAddressPrefecture: freezed == emergencyAddressPrefecture
          ? _self.emergencyAddressPrefecture
          : emergencyAddressPrefecture // ignore: cast_nullable_to_non_nullable
              as String?,
      emergencyAddressCity: freezed == emergencyAddressCity
          ? _self.emergencyAddressCity
          : emergencyAddressCity // ignore: cast_nullable_to_non_nullable
              as String?,
      emergencyAddressStreet: freezed == emergencyAddressStreet
          ? _self.emergencyAddressStreet
          : emergencyAddressStreet // ignore: cast_nullable_to_non_nullable
              as String?,
      emergencyAddressBuilding: freezed == emergencyAddressBuilding
          ? _self.emergencyAddressBuilding
          : emergencyAddressBuilding // ignore: cast_nullable_to_non_nullable
              as String?,
      emergencyAddressKana: freezed == emergencyAddressKana
          ? _self.emergencyAddressKana
          : emergencyAddressKana // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _PersonalInfo implements PersonalInfo {
  const _PersonalInfo(
      {this.image,
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
      this.emergencyAddressKana});
  factory _PersonalInfo.fromJson(Map<String, dynamic> json) =>
      _$PersonalInfoFromJson(json);

  /// 証明写真用画像ファイルのパス
  @override
  final String? image;

  /// 氏
  @override
  final String? lastName;

  /// 名
  @override
  final String? firstName;

  /// 氏ふりがな
  @override
  final String? lastNameKana;

  /// 名ふりがな
  @override
  final String? firstNameKana;

  /// メールアドレス
  @override
  final String? email;

  /// 緊急メールアドレス
  @override
  final String? emergencyEmail;

  /// 電話番号
  @override
  final String? phone;

  /// 緊急電話番号
  @override
  final String? emergencyPhone;

  /// 生年月日1 (年)
  @override
  final String? birthYear;

  /// 生年月日2 (月)
  @override
  final String? birthMonth;

  /// 生年月日3 (日)
  @override
  final String? birthDay;

  /// 年齢
  @override
  final String? age;

  /// 性別
  @override
  final String? gender;

  /// 郵便番号
  @override
  final String? postalCode;

  /// 住所(都道府県)
  @override
  final String? addressPrefecture;

  /// 住所(市区町村)
  @override
  final String? addressCity;

  /// 住所(番地)
  @override
  final String? addressStreet;

  /// 住所(マンション・建物名)
  @override
  final String? addressBuilding;

  /// 住所ふりがな
  @override
  final String? addressKana;

  /// 緊急郵便番号 - nullable
  @override
  final String? emergencyPostalCode;

  /// 緊急住所(都道府県) - nullable
  @override
  final String? emergencyAddressPrefecture;

  /// 緊急住所(市区町村) - nullable
  @override
  final String? emergencyAddressCity;

  /// 緊急住所(番地) - nullable
  @override
  final String? emergencyAddressStreet;

  /// 緊急住所(マンション・建物名) - nullable
  @override
  final String? emergencyAddressBuilding;

  /// 緊急住所ふりがな - nullable
  @override
  final String? emergencyAddressKana;

  /// Create a copy of PersonalInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PersonalInfoCopyWith<_PersonalInfo> get copyWith =>
      __$PersonalInfoCopyWithImpl<_PersonalInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PersonalInfoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PersonalInfo &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastNameKana, lastNameKana) ||
                other.lastNameKana == lastNameKana) &&
            (identical(other.firstNameKana, firstNameKana) ||
                other.firstNameKana == firstNameKana) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.emergencyEmail, emergencyEmail) ||
                other.emergencyEmail == emergencyEmail) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.emergencyPhone, emergencyPhone) ||
                other.emergencyPhone == emergencyPhone) &&
            (identical(other.birthYear, birthYear) ||
                other.birthYear == birthYear) &&
            (identical(other.birthMonth, birthMonth) ||
                other.birthMonth == birthMonth) &&
            (identical(other.birthDay, birthDay) ||
                other.birthDay == birthDay) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.postalCode, postalCode) ||
                other.postalCode == postalCode) &&
            (identical(other.addressPrefecture, addressPrefecture) ||
                other.addressPrefecture == addressPrefecture) &&
            (identical(other.addressCity, addressCity) ||
                other.addressCity == addressCity) &&
            (identical(other.addressStreet, addressStreet) ||
                other.addressStreet == addressStreet) &&
            (identical(other.addressBuilding, addressBuilding) ||
                other.addressBuilding == addressBuilding) &&
            (identical(other.addressKana, addressKana) ||
                other.addressKana == addressKana) &&
            (identical(other.emergencyPostalCode, emergencyPostalCode) ||
                other.emergencyPostalCode == emergencyPostalCode) &&
            (identical(other.emergencyAddressPrefecture,
                    emergencyAddressPrefecture) ||
                other.emergencyAddressPrefecture ==
                    emergencyAddressPrefecture) &&
            (identical(other.emergencyAddressCity, emergencyAddressCity) ||
                other.emergencyAddressCity == emergencyAddressCity) &&
            (identical(other.emergencyAddressStreet, emergencyAddressStreet) ||
                other.emergencyAddressStreet == emergencyAddressStreet) &&
            (identical(
                    other.emergencyAddressBuilding, emergencyAddressBuilding) ||
                other.emergencyAddressBuilding == emergencyAddressBuilding) &&
            (identical(other.emergencyAddressKana, emergencyAddressKana) ||
                other.emergencyAddressKana == emergencyAddressKana));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        image,
        lastName,
        firstName,
        lastNameKana,
        firstNameKana,
        email,
        emergencyEmail,
        phone,
        emergencyPhone,
        birthYear,
        birthMonth,
        birthDay,
        age,
        gender,
        postalCode,
        addressPrefecture,
        addressCity,
        addressStreet,
        addressBuilding,
        addressKana,
        emergencyPostalCode,
        emergencyAddressPrefecture,
        emergencyAddressCity,
        emergencyAddressStreet,
        emergencyAddressBuilding,
        emergencyAddressKana
      ]);

  @override
  String toString() {
    return 'PersonalInfo(image: $image, lastName: $lastName, firstName: $firstName, lastNameKana: $lastNameKana, firstNameKana: $firstNameKana, email: $email, emergencyEmail: $emergencyEmail, phone: $phone, emergencyPhone: $emergencyPhone, birthYear: $birthYear, birthMonth: $birthMonth, birthDay: $birthDay, age: $age, gender: $gender, postalCode: $postalCode, addressPrefecture: $addressPrefecture, addressCity: $addressCity, addressStreet: $addressStreet, addressBuilding: $addressBuilding, addressKana: $addressKana, emergencyPostalCode: $emergencyPostalCode, emergencyAddressPrefecture: $emergencyAddressPrefecture, emergencyAddressCity: $emergencyAddressCity, emergencyAddressStreet: $emergencyAddressStreet, emergencyAddressBuilding: $emergencyAddressBuilding, emergencyAddressKana: $emergencyAddressKana)';
  }
}

/// @nodoc
abstract mixin class _$PersonalInfoCopyWith<$Res>
    implements $PersonalInfoCopyWith<$Res> {
  factory _$PersonalInfoCopyWith(
          _PersonalInfo value, $Res Function(_PersonalInfo) _then) =
      __$PersonalInfoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? image,
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
      String? emergencyAddressKana});
}

/// @nodoc
class __$PersonalInfoCopyWithImpl<$Res>
    implements _$PersonalInfoCopyWith<$Res> {
  __$PersonalInfoCopyWithImpl(this._self, this._then);

  final _PersonalInfo _self;
  final $Res Function(_PersonalInfo) _then;

  /// Create a copy of PersonalInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? image = freezed,
    Object? lastName = freezed,
    Object? firstName = freezed,
    Object? lastNameKana = freezed,
    Object? firstNameKana = freezed,
    Object? email = freezed,
    Object? emergencyEmail = freezed,
    Object? phone = freezed,
    Object? emergencyPhone = freezed,
    Object? birthYear = freezed,
    Object? birthMonth = freezed,
    Object? birthDay = freezed,
    Object? age = freezed,
    Object? gender = freezed,
    Object? postalCode = freezed,
    Object? addressPrefecture = freezed,
    Object? addressCity = freezed,
    Object? addressStreet = freezed,
    Object? addressBuilding = freezed,
    Object? addressKana = freezed,
    Object? emergencyPostalCode = freezed,
    Object? emergencyAddressPrefecture = freezed,
    Object? emergencyAddressCity = freezed,
    Object? emergencyAddressStreet = freezed,
    Object? emergencyAddressBuilding = freezed,
    Object? emergencyAddressKana = freezed,
  }) {
    return _then(_PersonalInfo(
      image: freezed == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastNameKana: freezed == lastNameKana
          ? _self.lastNameKana
          : lastNameKana // ignore: cast_nullable_to_non_nullable
              as String?,
      firstNameKana: freezed == firstNameKana
          ? _self.firstNameKana
          : firstNameKana // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      emergencyEmail: freezed == emergencyEmail
          ? _self.emergencyEmail
          : emergencyEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      emergencyPhone: freezed == emergencyPhone
          ? _self.emergencyPhone
          : emergencyPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      birthYear: freezed == birthYear
          ? _self.birthYear
          : birthYear // ignore: cast_nullable_to_non_nullable
              as String?,
      birthMonth: freezed == birthMonth
          ? _self.birthMonth
          : birthMonth // ignore: cast_nullable_to_non_nullable
              as String?,
      birthDay: freezed == birthDay
          ? _self.birthDay
          : birthDay // ignore: cast_nullable_to_non_nullable
              as String?,
      age: freezed == age
          ? _self.age
          : age // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _self.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      postalCode: freezed == postalCode
          ? _self.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String?,
      addressPrefecture: freezed == addressPrefecture
          ? _self.addressPrefecture
          : addressPrefecture // ignore: cast_nullable_to_non_nullable
              as String?,
      addressCity: freezed == addressCity
          ? _self.addressCity
          : addressCity // ignore: cast_nullable_to_non_nullable
              as String?,
      addressStreet: freezed == addressStreet
          ? _self.addressStreet
          : addressStreet // ignore: cast_nullable_to_non_nullable
              as String?,
      addressBuilding: freezed == addressBuilding
          ? _self.addressBuilding
          : addressBuilding // ignore: cast_nullable_to_non_nullable
              as String?,
      addressKana: freezed == addressKana
          ? _self.addressKana
          : addressKana // ignore: cast_nullable_to_non_nullable
              as String?,
      emergencyPostalCode: freezed == emergencyPostalCode
          ? _self.emergencyPostalCode
          : emergencyPostalCode // ignore: cast_nullable_to_non_nullable
              as String?,
      emergencyAddressPrefecture: freezed == emergencyAddressPrefecture
          ? _self.emergencyAddressPrefecture
          : emergencyAddressPrefecture // ignore: cast_nullable_to_non_nullable
              as String?,
      emergencyAddressCity: freezed == emergencyAddressCity
          ? _self.emergencyAddressCity
          : emergencyAddressCity // ignore: cast_nullable_to_non_nullable
              as String?,
      emergencyAddressStreet: freezed == emergencyAddressStreet
          ? _self.emergencyAddressStreet
          : emergencyAddressStreet // ignore: cast_nullable_to_non_nullable
              as String?,
      emergencyAddressBuilding: freezed == emergencyAddressBuilding
          ? _self.emergencyAddressBuilding
          : emergencyAddressBuilding // ignore: cast_nullable_to_non_nullable
              as String?,
      emergencyAddressKana: freezed == emergencyAddressKana
          ? _self.emergencyAddressKana
          : emergencyAddressKana // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on

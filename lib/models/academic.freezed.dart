// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'academic.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Academic {
  /// 学校名
  String? get name;

  /// 専攻
  String? get major;

  /// 入学時期 / 卒業時期（年）
  String? get year;

  /// 入学時期 / 卒業時期（月）
  String? get month;

  /// 入学 or 卒業
  bool? get isJoin;

  /// Create a copy of Academic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AcademicCopyWith<Academic> get copyWith =>
      _$AcademicCopyWithImpl<Academic>(this as Academic, _$identity);

  /// Serializes this Academic to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Academic &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.major, major) || other.major == major) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.isJoin, isJoin) || other.isJoin == isJoin));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, major, year, month, isJoin);

  @override
  String toString() {
    return 'Academic(name: $name, major: $major, year: $year, month: $month, isJoin: $isJoin)';
  }
}

/// @nodoc
abstract mixin class $AcademicCopyWith<$Res> {
  factory $AcademicCopyWith(Academic value, $Res Function(Academic) _then) =
      _$AcademicCopyWithImpl;
  @useResult
  $Res call(
      {String? name, String? major, String? year, String? month, bool? isJoin});
}

/// @nodoc
class _$AcademicCopyWithImpl<$Res> implements $AcademicCopyWith<$Res> {
  _$AcademicCopyWithImpl(this._self, this._then);

  final Academic _self;
  final $Res Function(Academic) _then;

  /// Create a copy of Academic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? major = freezed,
    Object? year = freezed,
    Object? month = freezed,
    Object? isJoin = freezed,
  }) {
    return _then(_self.copyWith(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      major: freezed == major
          ? _self.major
          : major // ignore: cast_nullable_to_non_nullable
              as String?,
      year: freezed == year
          ? _self.year
          : year // ignore: cast_nullable_to_non_nullable
              as String?,
      month: freezed == month
          ? _self.month
          : month // ignore: cast_nullable_to_non_nullable
              as String?,
      isJoin: freezed == isJoin
          ? _self.isJoin
          : isJoin // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Academic implements Academic {
  const _Academic({this.name, this.major, this.year, this.month, this.isJoin});
  factory _Academic.fromJson(Map<String, dynamic> json) =>
      _$AcademicFromJson(json);

  /// 学校名
  @override
  final String? name;

  /// 専攻
  @override
  final String? major;

  /// 入学時期 / 卒業時期（年）
  @override
  final String? year;

  /// 入学時期 / 卒業時期（月）
  @override
  final String? month;

  /// 入学 or 卒業
  @override
  final bool? isJoin;

  /// Create a copy of Academic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AcademicCopyWith<_Academic> get copyWith =>
      __$AcademicCopyWithImpl<_Academic>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AcademicToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Academic &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.major, major) || other.major == major) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.isJoin, isJoin) || other.isJoin == isJoin));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, major, year, month, isJoin);

  @override
  String toString() {
    return 'Academic(name: $name, major: $major, year: $year, month: $month, isJoin: $isJoin)';
  }
}

/// @nodoc
abstract mixin class _$AcademicCopyWith<$Res>
    implements $AcademicCopyWith<$Res> {
  factory _$AcademicCopyWith(_Academic value, $Res Function(_Academic) _then) =
      __$AcademicCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? name, String? major, String? year, String? month, bool? isJoin});
}

/// @nodoc
class __$AcademicCopyWithImpl<$Res> implements _$AcademicCopyWith<$Res> {
  __$AcademicCopyWithImpl(this._self, this._then);

  final _Academic _self;
  final $Res Function(_Academic) _then;

  /// Create a copy of Academic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = freezed,
    Object? major = freezed,
    Object? year = freezed,
    Object? month = freezed,
    Object? isJoin = freezed,
  }) {
    return _then(_Academic(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      major: freezed == major
          ? _self.major
          : major // ignore: cast_nullable_to_non_nullable
              as String?,
      year: freezed == year
          ? _self.year
          : year // ignore: cast_nullable_to_non_nullable
              as String?,
      month: freezed == month
          ? _self.month
          : month // ignore: cast_nullable_to_non_nullable
              as String?,
      isJoin: freezed == isJoin
          ? _self.isJoin
          : isJoin // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

// dart format on

// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'qualification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Qualification {
  /// 資格名
  String? get name;

  /// 取得時期(年)
  String? get year;

  /// 取得時期(月)
  String? get month;

  /// Create a copy of Qualification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $QualificationCopyWith<Qualification> get copyWith =>
      _$QualificationCopyWithImpl<Qualification>(
          this as Qualification, _$identity);

  /// Serializes this Qualification to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Qualification &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.month, month) || other.month == month));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, year, month);

  @override
  String toString() {
    return 'Qualification(name: $name, year: $year, month: $month)';
  }
}

/// @nodoc
abstract mixin class $QualificationCopyWith<$Res> {
  factory $QualificationCopyWith(
          Qualification value, $Res Function(Qualification) _then) =
      _$QualificationCopyWithImpl;
  @useResult
  $Res call({String? name, String? year, String? month});
}

/// @nodoc
class _$QualificationCopyWithImpl<$Res>
    implements $QualificationCopyWith<$Res> {
  _$QualificationCopyWithImpl(this._self, this._then);

  final Qualification _self;
  final $Res Function(Qualification) _then;

  /// Create a copy of Qualification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? year = freezed,
    Object? month = freezed,
  }) {
    return _then(_self.copyWith(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      year: freezed == year
          ? _self.year
          : year // ignore: cast_nullable_to_non_nullable
              as String?,
      month: freezed == month
          ? _self.month
          : month // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Qualification implements Qualification {
  const _Qualification({this.name, this.year, this.month});
  factory _Qualification.fromJson(Map<String, dynamic> json) =>
      _$QualificationFromJson(json);

  /// 資格名
  @override
  final String? name;

  /// 取得時期(年)
  @override
  final String? year;

  /// 取得時期(月)
  @override
  final String? month;

  /// Create a copy of Qualification
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$QualificationCopyWith<_Qualification> get copyWith =>
      __$QualificationCopyWithImpl<_Qualification>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$QualificationToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Qualification &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.month, month) || other.month == month));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, year, month);

  @override
  String toString() {
    return 'Qualification(name: $name, year: $year, month: $month)';
  }
}

/// @nodoc
abstract mixin class _$QualificationCopyWith<$Res>
    implements $QualificationCopyWith<$Res> {
  factory _$QualificationCopyWith(
          _Qualification value, $Res Function(_Qualification) _then) =
      __$QualificationCopyWithImpl;
  @override
  @useResult
  $Res call({String? name, String? year, String? month});
}

/// @nodoc
class __$QualificationCopyWithImpl<$Res>
    implements _$QualificationCopyWith<$Res> {
  __$QualificationCopyWithImpl(this._self, this._then);

  final _Qualification _self;
  final $Res Function(_Qualification) _then;

  /// Create a copy of Qualification
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = freezed,
    Object? year = freezed,
    Object? month = freezed,
  }) {
    return _then(_Qualification(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      year: freezed == year
          ? _self.year
          : year // ignore: cast_nullable_to_non_nullable
              as String?,
      month: freezed == month
          ? _self.month
          : month // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on

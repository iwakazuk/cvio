// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'academic.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Academic {
  /// 学校名
  String? get name => throw _privateConstructorUsedError;

  /// 専攻
  String? get major => throw _privateConstructorUsedError;

  /// 入学時期 / 卒業時期（年）
  String? get year => throw _privateConstructorUsedError;

  /// 入学時期 / 卒業時期（月）
  String? get month => throw _privateConstructorUsedError;

  /// 入学 or 卒業
  bool? get isJoin => throw _privateConstructorUsedError;

  /// Create a copy of Academic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AcademicCopyWith<Academic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AcademicCopyWith<$Res> {
  factory $AcademicCopyWith(Academic value, $Res Function(Academic) then) =
      _$AcademicCopyWithImpl<$Res, Academic>;
  @useResult
  $Res call(
      {String? name, String? major, String? year, String? month, bool? isJoin});
}

/// @nodoc
class _$AcademicCopyWithImpl<$Res, $Val extends Academic>
    implements $AcademicCopyWith<$Res> {
  _$AcademicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      major: freezed == major
          ? _value.major
          : major // ignore: cast_nullable_to_non_nullable
              as String?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String?,
      month: freezed == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as String?,
      isJoin: freezed == isJoin
          ? _value.isJoin
          : isJoin // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AcademicImplCopyWith<$Res>
    implements $AcademicCopyWith<$Res> {
  factory _$$AcademicImplCopyWith(
          _$AcademicImpl value, $Res Function(_$AcademicImpl) then) =
      __$$AcademicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name, String? major, String? year, String? month, bool? isJoin});
}

/// @nodoc
class __$$AcademicImplCopyWithImpl<$Res>
    extends _$AcademicCopyWithImpl<$Res, _$AcademicImpl>
    implements _$$AcademicImplCopyWith<$Res> {
  __$$AcademicImplCopyWithImpl(
      _$AcademicImpl _value, $Res Function(_$AcademicImpl) _then)
      : super(_value, _then);

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
    return _then(_$AcademicImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      major: freezed == major
          ? _value.major
          : major // ignore: cast_nullable_to_non_nullable
              as String?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String?,
      month: freezed == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as String?,
      isJoin: freezed == isJoin
          ? _value.isJoin
          : isJoin // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$AcademicImpl implements _Academic {
  const _$AcademicImpl(
      {this.name, this.major, this.year, this.month, this.isJoin});

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

  @override
  String toString() {
    return 'Academic(name: $name, major: $major, year: $year, month: $month, isJoin: $isJoin)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AcademicImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.major, major) || other.major == major) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.isJoin, isJoin) || other.isJoin == isJoin));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, major, year, month, isJoin);

  /// Create a copy of Academic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AcademicImplCopyWith<_$AcademicImpl> get copyWith =>
      __$$AcademicImplCopyWithImpl<_$AcademicImpl>(this, _$identity);
}

abstract class _Academic implements Academic {
  const factory _Academic(
      {final String? name,
      final String? major,
      final String? year,
      final String? month,
      final bool? isJoin}) = _$AcademicImpl;

  /// 学校名
  @override
  String? get name;

  /// 専攻
  @override
  String? get major;

  /// 入学時期 / 卒業時期（年）
  @override
  String? get year;

  /// 入学時期 / 卒業時期（月）
  @override
  String? get month;

  /// 入学 or 卒業
  @override
  bool? get isJoin;

  /// Create a copy of Academic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AcademicImplCopyWith<_$AcademicImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

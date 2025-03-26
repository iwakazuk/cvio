// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'work.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Work {
  /// 会社名
  String? get name => throw _privateConstructorUsedError;

  /// 役職
  String? get position => throw _privateConstructorUsedError;

  /// 入社時期 / 退職時期（年）
  String? get year => throw _privateConstructorUsedError;

  /// 入社時期 / 退職時期（月）
  String? get month => throw _privateConstructorUsedError;

  /// 職務内容
  String? get description => throw _privateConstructorUsedError;

  /// 退職理由
  String? get reason => throw _privateConstructorUsedError;

  /// 入社 or 退職
  bool? get isJoin => throw _privateConstructorUsedError;

  /// Create a copy of Work
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WorkCopyWith<Work> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkCopyWith<$Res> {
  factory $WorkCopyWith(Work value, $Res Function(Work) then) =
      _$WorkCopyWithImpl<$Res, Work>;
  @useResult
  $Res call(
      {String? name,
      String? position,
      String? year,
      String? month,
      String? description,
      String? reason,
      bool? isJoin});
}

/// @nodoc
class _$WorkCopyWithImpl<$Res, $Val extends Work>
    implements $WorkCopyWith<$Res> {
  _$WorkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Work
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? position = freezed,
    Object? year = freezed,
    Object? month = freezed,
    Object? description = freezed,
    Object? reason = freezed,
    Object? isJoin = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String?,
      month: freezed == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      isJoin: freezed == isJoin
          ? _value.isJoin
          : isJoin // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WorkImplCopyWith<$Res> implements $WorkCopyWith<$Res> {
  factory _$$WorkImplCopyWith(
          _$WorkImpl value, $Res Function(_$WorkImpl) then) =
      __$$WorkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? position,
      String? year,
      String? month,
      String? description,
      String? reason,
      bool? isJoin});
}

/// @nodoc
class __$$WorkImplCopyWithImpl<$Res>
    extends _$WorkCopyWithImpl<$Res, _$WorkImpl>
    implements _$$WorkImplCopyWith<$Res> {
  __$$WorkImplCopyWithImpl(_$WorkImpl _value, $Res Function(_$WorkImpl) _then)
      : super(_value, _then);

  /// Create a copy of Work
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? position = freezed,
    Object? year = freezed,
    Object? month = freezed,
    Object? description = freezed,
    Object? reason = freezed,
    Object? isJoin = freezed,
  }) {
    return _then(_$WorkImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String?,
      month: freezed == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      isJoin: freezed == isJoin
          ? _value.isJoin
          : isJoin // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$WorkImpl implements _Work {
  const _$WorkImpl(
      {this.name,
      this.position,
      this.year,
      this.month,
      this.description,
      this.reason,
      this.isJoin});

  /// 会社名
  @override
  final String? name;

  /// 役職
  @override
  final String? position;

  /// 入社時期 / 退職時期（年）
  @override
  final String? year;

  /// 入社時期 / 退職時期（月）
  @override
  final String? month;

  /// 職務内容
  @override
  final String? description;

  /// 退職理由
  @override
  final String? reason;

  /// 入社 or 退職
  @override
  final bool? isJoin;

  @override
  String toString() {
    return 'Work(name: $name, position: $position, year: $year, month: $month, description: $description, reason: $reason, isJoin: $isJoin)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.isJoin, isJoin) || other.isJoin == isJoin));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, position, year, month, description, reason, isJoin);

  /// Create a copy of Work
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkImplCopyWith<_$WorkImpl> get copyWith =>
      __$$WorkImplCopyWithImpl<_$WorkImpl>(this, _$identity);
}

abstract class _Work implements Work {
  const factory _Work(
      {final String? name,
      final String? position,
      final String? year,
      final String? month,
      final String? description,
      final String? reason,
      final bool? isJoin}) = _$WorkImpl;

  /// 会社名
  @override
  String? get name;

  /// 役職
  @override
  String? get position;

  /// 入社時期 / 退職時期（年）
  @override
  String? get year;

  /// 入社時期 / 退職時期（月）
  @override
  String? get month;

  /// 職務内容
  @override
  String? get description;

  /// 退職理由
  @override
  String? get reason;

  /// 入社 or 退職
  @override
  bool? get isJoin;

  /// Create a copy of Work
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WorkImplCopyWith<_$WorkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

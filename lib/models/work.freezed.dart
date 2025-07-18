// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'work.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Work {
  /// 会社名
  String? get name;

  /// 役職
  String? get position;

  /// 入社時期 / 退職時期（年）TODO: 年と月を分けるかどうか
  String? get year;

  /// 入社時期 / 退職時期（月）
  String? get month;

  /// 職務内容
  String? get description;

  /// 退職理由
  String? get reason;

  /// 入社 or 退職
  bool? get isJoin;

  /// Create a copy of Work
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WorkCopyWith<Work> get copyWith =>
      _$WorkCopyWithImpl<Work>(this as Work, _$identity);

  /// Serializes this Work to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Work &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, position, year, month, description, reason, isJoin);

  @override
  String toString() {
    return 'Work(name: $name, position: $position, year: $year, month: $month, description: $description, reason: $reason, isJoin: $isJoin)';
  }
}

/// @nodoc
abstract mixin class $WorkCopyWith<$Res> {
  factory $WorkCopyWith(Work value, $Res Function(Work) _then) =
      _$WorkCopyWithImpl;
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
class _$WorkCopyWithImpl<$Res> implements $WorkCopyWith<$Res> {
  _$WorkCopyWithImpl(this._self, this._then);

  final Work _self;
  final $Res Function(Work) _then;

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
    return _then(_self.copyWith(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      position: freezed == position
          ? _self.position
          : position // ignore: cast_nullable_to_non_nullable
              as String?,
      year: freezed == year
          ? _self.year
          : year // ignore: cast_nullable_to_non_nullable
              as String?,
      month: freezed == month
          ? _self.month
          : month // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      reason: freezed == reason
          ? _self.reason
          : reason // ignore: cast_nullable_to_non_nullable
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
class _Work implements Work {
  const _Work(
      {this.name,
      this.position,
      this.year,
      this.month,
      this.description,
      this.reason,
      this.isJoin});
  factory _Work.fromJson(Map<String, dynamic> json) => _$WorkFromJson(json);

  /// 会社名
  @override
  final String? name;

  /// 役職
  @override
  final String? position;

  /// 入社時期 / 退職時期（年）TODO: 年と月を分けるかどうか
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

  /// Create a copy of Work
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WorkCopyWith<_Work> get copyWith =>
      __$WorkCopyWithImpl<_Work>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$WorkToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Work &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, position, year, month, description, reason, isJoin);

  @override
  String toString() {
    return 'Work(name: $name, position: $position, year: $year, month: $month, description: $description, reason: $reason, isJoin: $isJoin)';
  }
}

/// @nodoc
abstract mixin class _$WorkCopyWith<$Res> implements $WorkCopyWith<$Res> {
  factory _$WorkCopyWith(_Work value, $Res Function(_Work) _then) =
      __$WorkCopyWithImpl;
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
class __$WorkCopyWithImpl<$Res> implements _$WorkCopyWith<$Res> {
  __$WorkCopyWithImpl(this._self, this._then);

  final _Work _self;
  final $Res Function(_Work) _then;

  /// Create a copy of Work
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = freezed,
    Object? position = freezed,
    Object? year = freezed,
    Object? month = freezed,
    Object? description = freezed,
    Object? reason = freezed,
    Object? isJoin = freezed,
  }) {
    return _then(_Work(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      position: freezed == position
          ? _self.position
          : position // ignore: cast_nullable_to_non_nullable
              as String?,
      year: freezed == year
          ? _self.year
          : year // ignore: cast_nullable_to_non_nullable
              as String?,
      month: freezed == month
          ? _self.month
          : month // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      reason: freezed == reason
          ? _self.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      isJoin: freezed == isJoin
          ? _self.isJoin
          : isJoin // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

// dart format on

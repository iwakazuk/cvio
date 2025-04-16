// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resume.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Resume {
  String? get id;

  /// タイトル
  String? get title;

  /// 内容
  String? get content;

  /// 作成日
  DateTime? get createDate;

  /// 本人希望欄など
  String? get subContent;

  /// PDF
  String? get path;

  /// フォント
  String? get font;

  /// 職務経歴書か
  bool? get isCareer;

  /// Create a copy of Resume
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ResumeCopyWith<Resume> get copyWith =>
      _$ResumeCopyWithImpl<Resume>(this as Resume, _$identity);

  /// Serializes this Resume to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Resume &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.createDate, createDate) ||
                other.createDate == createDate) &&
            (identical(other.subContent, subContent) ||
                other.subContent == subContent) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.font, font) || other.font == font) &&
            (identical(other.isCareer, isCareer) ||
                other.isCareer == isCareer));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, content, createDate,
      subContent, path, font, isCareer);

  @override
  String toString() {
    return 'Resume(id: $id, title: $title, content: $content, createDate: $createDate, subContent: $subContent, path: $path, font: $font, isCareer: $isCareer)';
  }
}

/// @nodoc
abstract mixin class $ResumeCopyWith<$Res> {
  factory $ResumeCopyWith(Resume value, $Res Function(Resume) _then) =
      _$ResumeCopyWithImpl;
  @useResult
  $Res call(
      {String? id,
      String? title,
      String? content,
      DateTime? createDate,
      String? subContent,
      String? path,
      String? font,
      bool? isCareer});
}

/// @nodoc
class _$ResumeCopyWithImpl<$Res> implements $ResumeCopyWith<$Res> {
  _$ResumeCopyWithImpl(this._self, this._then);

  final Resume _self;
  final $Res Function(Resume) _then;

  /// Create a copy of Resume
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? content = freezed,
    Object? createDate = freezed,
    Object? subContent = freezed,
    Object? path = freezed,
    Object? font = freezed,
    Object? isCareer = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      createDate: freezed == createDate
          ? _self.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      subContent: freezed == subContent
          ? _self.subContent
          : subContent // ignore: cast_nullable_to_non_nullable
              as String?,
      path: freezed == path
          ? _self.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      font: freezed == font
          ? _self.font
          : font // ignore: cast_nullable_to_non_nullable
              as String?,
      isCareer: freezed == isCareer
          ? _self.isCareer
          : isCareer // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Resume implements Resume {
  const _Resume(
      {this.id,
      this.title,
      this.content,
      this.createDate,
      this.subContent,
      this.path,
      this.font,
      this.isCareer});
  factory _Resume.fromJson(Map<String, dynamic> json) => _$ResumeFromJson(json);

  @override
  final String? id;

  /// タイトル
  @override
  final String? title;

  /// 内容
  @override
  final String? content;

  /// 作成日
  @override
  final DateTime? createDate;

  /// 本人希望欄など
  @override
  final String? subContent;

  /// PDF
  @override
  final String? path;

  /// フォント
  @override
  final String? font;

  /// 職務経歴書か
  @override
  final bool? isCareer;

  /// Create a copy of Resume
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ResumeCopyWith<_Resume> get copyWith =>
      __$ResumeCopyWithImpl<_Resume>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ResumeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Resume &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.createDate, createDate) ||
                other.createDate == createDate) &&
            (identical(other.subContent, subContent) ||
                other.subContent == subContent) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.font, font) || other.font == font) &&
            (identical(other.isCareer, isCareer) ||
                other.isCareer == isCareer));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, content, createDate,
      subContent, path, font, isCareer);

  @override
  String toString() {
    return 'Resume(id: $id, title: $title, content: $content, createDate: $createDate, subContent: $subContent, path: $path, font: $font, isCareer: $isCareer)';
  }
}

/// @nodoc
abstract mixin class _$ResumeCopyWith<$Res> implements $ResumeCopyWith<$Res> {
  factory _$ResumeCopyWith(_Resume value, $Res Function(_Resume) _then) =
      __$ResumeCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? id,
      String? title,
      String? content,
      DateTime? createDate,
      String? subContent,
      String? path,
      String? font,
      bool? isCareer});
}

/// @nodoc
class __$ResumeCopyWithImpl<$Res> implements _$ResumeCopyWith<$Res> {
  __$ResumeCopyWithImpl(this._self, this._then);

  final _Resume _self;
  final $Res Function(_Resume) _then;

  /// Create a copy of Resume
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? content = freezed,
    Object? createDate = freezed,
    Object? subContent = freezed,
    Object? path = freezed,
    Object? font = freezed,
    Object? isCareer = freezed,
  }) {
    return _then(_Resume(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      createDate: freezed == createDate
          ? _self.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      subContent: freezed == subContent
          ? _self.subContent
          : subContent // ignore: cast_nullable_to_non_nullable
              as String?,
      path: freezed == path
          ? _self.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      font: freezed == font
          ? _self.font
          : font // ignore: cast_nullable_to_non_nullable
              as String?,
      isCareer: freezed == isCareer
          ? _self.isCareer
          : isCareer // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

// dart format on

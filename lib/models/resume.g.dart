// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resume.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Resume _$ResumeFromJson(Map<String, dynamic> json) => _Resume(
      id: json['id'] as String?,
      title: json['title'] as String?,
      content: json['content'] as String?,
      createDate: json['createDate'] == null
          ? null
          : DateTime.parse(json['createDate'] as String),
      subContent: json['subContent'] as String?,
      path: json['path'] as String?,
      font: json['font'] as String?,
      isCareer: json['isCareer'] as bool?,
    );

Map<String, dynamic> _$ResumeToJson(_Resume instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'createDate': instance.createDate?.toIso8601String(),
      'subContent': instance.subContent,
      'path': instance.path,
      'font': instance.font,
      'isCareer': instance.isCareer,
    };

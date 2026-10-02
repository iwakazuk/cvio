// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'academic.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Academic _$AcademicFromJson(Map<String, dynamic> json) => _Academic(
      name: json['name'] as String?,
      major: json['major'] as String?,
      year: json['year'] as String?,
      month: json['month'] as String?,
      isJoin: json['isJoin'] as bool?,
    );

Map<String, dynamic> _$AcademicToJson(_Academic instance) => <String, dynamic>{
      'name': instance.name,
      'major': instance.major,
      'year': instance.year,
      'month': instance.month,
      'isJoin': instance.isJoin,
    };

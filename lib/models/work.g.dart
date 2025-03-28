// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Work _$WorkFromJson(Map<String, dynamic> json) => _Work(
      name: json['name'] as String?,
      position: json['position'] as String?,
      year: json['year'] as String?,
      month: json['month'] as String?,
      description: json['description'] as String?,
      reason: json['reason'] as String?,
      isJoin: json['isJoin'] as bool?,
    );

Map<String, dynamic> _$WorkToJson(_Work instance) => <String, dynamic>{
      'name': instance.name,
      'position': instance.position,
      'year': instance.year,
      'month': instance.month,
      'description': instance.description,
      'reason': instance.reason,
      'isJoin': instance.isJoin,
    };

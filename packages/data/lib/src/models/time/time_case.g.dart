// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_case.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TimeCase _$$_TimeCaseFromJson(Map<String, dynamic> json) => _$_TimeCase(
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      cases: json['cases'] as int?,
      time:
          json['time'] == null ? null : DateTime.parse(json['time'] as String),
    );

Map<String, dynamic> _$$_TimeCaseToJson(_$_TimeCase instance) =>
    <String, dynamic>{
      'date': instance.date?.toIso8601String(),
      'cases': instance.cases,
      'time': instance.time?.toIso8601String(),
    };

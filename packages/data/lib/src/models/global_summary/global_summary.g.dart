// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'global_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GlobalSummary _$$_GlobalSummaryFromJson(Map<String, dynamic> json) =>
    _$_GlobalSummary(
      newConfirmed: json['NewConfirmed'] as int,
      totalConfirmed: json['TotalConfirmed'] as int,
      newDeaths: json['NewDeaths'] as int,
      totalDeaths: json['TotalDeaths'] as int,
      newRecovered: json['NewRecovered'] as int,
      totalRecovered: json['TotalRecovered'] as int,
      date:
          json['Date'] == null ? null : DateTime.parse(json['Date'] as String),
    );

Map<String, dynamic> _$$_GlobalSummaryToJson(_$_GlobalSummary instance) =>
    <String, dynamic>{
      'NewConfirmed': instance.newConfirmed,
      'TotalConfirmed': instance.totalConfirmed,
      'NewDeaths': instance.newDeaths,
      'TotalDeaths': instance.totalDeaths,
      'NewRecovered': instance.newRecovered,
      'TotalRecovered': instance.totalRecovered,
      'Date': instance.date?.toIso8601String(),
    };

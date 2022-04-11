// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CountrySummary _$$_CountrySummaryFromJson(Map<String, dynamic> json) =>
    _$_CountrySummary(
      country: json['Country'] as String?,
      confirmed: json['Confirmed'] as int?,
      deaths: json['Deaths'] as int?,
      recovered: json['Recovered'] as int?,
      active: json['Active'] as int?,
      date:
          json['Date'] == null ? null : DateTime.parse(json['Date'] as String),
    );

Map<String, dynamic> _$$_CountrySummaryToJson(_$_CountrySummary instance) =>
    <String, dynamic>{
      'Country': instance.country,
      'Confirmed': instance.confirmed,
      'Deaths': instance.deaths,
      'Recovered': instance.recovered,
      'Active': instance.active,
      'Date': instance.date?.toIso8601String(),
    };

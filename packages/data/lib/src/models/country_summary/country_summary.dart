import 'package:freezed_annotation/freezed_annotation.dart';

part 'country_summary.freezed.dart';
part 'country_summary.g.dart';

@freezed
class CountrySummary with _$CountrySummary {
  const CountrySummary._();

  factory CountrySummary({
    @JsonKey(name: 'Country') String? country,
    @JsonKey(name: 'Confirmed') int? confirmed,
    @JsonKey(name: 'Deaths') int? deaths,
    @JsonKey(name: 'Recovered') int? recovered,
    @JsonKey(name: 'Active') int? active,
    @JsonKey(name: 'Date') DateTime? date,
  }) = _CountrySummary;

  factory CountrySummary.fromJson(Map<String, dynamic> json) =>
      _$CountrySummaryFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'global_summary.freezed.dart';
part 'global_summary.g.dart';

@freezed
class GlobalSummary with _$GlobalSummary {
  const GlobalSummary._();

  factory GlobalSummary({
    @JsonKey(name: 'NewConfirmed') required int newConfirmed,
    @JsonKey(name: 'TotalConfirmed') required int totalConfirmed,
    @JsonKey(name: 'NewDeaths') required int newDeaths,
    @JsonKey(name: 'TotalDeaths') required int totalDeaths,
    @JsonKey(name: 'NewRecovered') required int newRecovered,
    @JsonKey(name: 'TotalRecovered') required int totalRecovered,
    @JsonKey(name: 'Date') DateTime? date,
  }) = _GlobalSummary;

  factory GlobalSummary.fromJson(Map<String, dynamic> json) =>
      _$GlobalSummaryFromJson(json);
}

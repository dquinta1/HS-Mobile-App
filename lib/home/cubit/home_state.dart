part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    String? name,
    String? photo,
    String? city,
    String? currentCountry,
    String? selectedCountry,
    NavigationStatus? navStatus,
    List<CountrySummary>? countrySummary,
    GlobalSummary? globalSummary,
    List<Country>? countries,
    TimeCase? timeCase,
    @Default(false) bool locationLoading,
    @Default(false) bool countriesLoading,
    @Default(false) bool summaryLoading,
    @Default(false) bool globalSummaryLoading,
  }) = _HomeState;
}

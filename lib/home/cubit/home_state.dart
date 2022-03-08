part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    String? name,
    String? photo,
    String? city,
    String? country,
    int? covidCases,
    String? selectedCountry,
    List<String>? countryList,
  }) = _HomeState;
}

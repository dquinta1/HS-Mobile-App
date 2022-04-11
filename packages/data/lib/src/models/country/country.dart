import 'package:freezed_annotation/freezed_annotation.dart';

part 'country.freezed.dart';
part 'country.g.dart';

@freezed
class Country with _$Country {
  const Country._();

  factory Country({
    @JsonKey(name: 'Country') String? country,
    @JsonKey(name: 'Slug') String? slug,
    @JsonKey(name: 'ISO2') String? iso2,
  }) = _Country;

  factory Country.fromJson(Map<String, dynamic> json) =>
      _$CountryFromJson(json);
}

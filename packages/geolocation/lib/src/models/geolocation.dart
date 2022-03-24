import 'package:freezed_annotation/freezed_annotation.dart';

part 'geolocation.freezed.dart';
part 'geolocation.g.dart';

@freezed
class Geolocation with _$Geolocation {
  factory Geolocation(
      {double? longitude,
      double? latitude,
      String? city,
      String? country}) = _Geolocation;

  factory Geolocation.fromJson(Map<String, dynamic> json) =>
      _$GeolocationFromJson(json);
}

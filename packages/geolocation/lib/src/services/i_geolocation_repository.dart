import 'package:geolocation_repository/geolocation_repository.dart';

abstract class IGeolocationRepository {
  Future<Geolocation> determinePosition();
}

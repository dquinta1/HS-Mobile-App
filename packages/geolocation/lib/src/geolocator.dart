import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';

/// A Calculator.
class GeolocationService {
  Future<List<String?>> determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    print('geolocation');
    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      return Future.error('Location services are disabled.');
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    Position currentPosition = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    print(currentPosition.longitude);
    print(currentPosition.latitude);
    return await _getAddressFromLatLng(
        currentPosition.latitude, currentPosition.longitude);
  }

  Future<List<String?>> _getAddressFromLatLng(
      double latitude, double longitude) async {
    try {
      List<Placemark> p = await placemarkFromCoordinates(latitude, longitude);
      Placemark place = p.elementAt(0);
      return [place.locality, place.country];
    } catch (e) {
      print(e.toString());
      return ['unknown', 'unknown'];
    }
  }
}

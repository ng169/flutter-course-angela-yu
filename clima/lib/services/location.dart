import 'package:geolocator/geolocator.dart';

class Location {
  double? latitude;
  double? longitude;

  Location({this.latitude, this.longitude});

  static Future<Location> getCurrentLocation() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.low);
    return Location(
      latitude: position.latitude,
      longitude: position.longitude,
    );
  }
}

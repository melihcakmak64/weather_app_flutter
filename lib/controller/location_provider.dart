import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';
import 'package:weather_app/model/location_model.dart';

final locationProvider = FutureProvider<LocationModel>((ref) async {
  final serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) throw Exception('Konum servisleri kapalı');

  LocationPermission permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      throw Exception('Konum izni reddedildi');
    }
  }
  if (permission == LocationPermission.deniedForever) {
    throw Exception('Konum izni kalıcı olarak reddedildi');
  }

  final position = await Geolocator.getCurrentPosition();

  final placemarks = await placemarkFromCoordinates(
    position.latitude,
    position.longitude,
  );

  final place = placemarks.first;
  final address = (place.locality ?? "").isNotEmpty
      ? "${place.locality}, ${place.administrativeArea}"
      : "${place.administrativeArea}";

  return LocationModel(
    latitude: position.latitude,
    longitude: position.longitude,
    address: address,
  );
});

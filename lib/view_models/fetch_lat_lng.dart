import 'dart:async';

import 'package:get/get.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

class FetchLatLng extends GetxController {
  var lat = 'Get lat'.obs;
  var lng = 'Get lng'.obs;
  var address = 'Get address'.obs;
  late StreamSubscription<Position> streamSubscription;

  @override
  void onInit() {
    super.onInit();
    getLocation();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  getLocation() async {
    bool serviceEnabled;

    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      await Geolocator.openLocationSettings();
      return Future.error('Location services are disabled');
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location Permissions are denied');
      }
    }
    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied we can not request for permission');
    }
    streamSubscription =
        Geolocator.getPositionStream().listen((Position position) {
      lat.value = 'Latitude: ${position.latitude}';
      lng.value = 'Longitude: ${position.longitude}';
      getAddressFromLatLng(position);
    });
  }

  Future<void> getAddressFromLatLng(Position position) async {
    List<Placemark> placemark =
        await placemarkFromCoordinates(position.latitude, position.longitude);
    Placemark place = placemark[0];
    address.value = '${place.locality}, ${place.country}';
  }
}

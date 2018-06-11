import 'package:flutter/material.dart';
import 'package:geolocation/geolocation.dart';

import 'dart:async';



class getLocationState  {
  static LocationResult locations = null;
  StreamSubscription<LocationResult> streamSubscription;
  bool trackLocation = false;
  getLocationState()
  {
    checkGps();
    trackLocation = false;
    locations = null;
  }
   getLocations() {
    if (trackLocation) {

      streamSubscription.cancel();
      streamSubscription = null;
      locations = null;
    } else {
      streamSubscription = Geolocation
          .locationUpdates(
        accuracy: LocationAccuracy.best,
        displacementFilter: 0.0,
        inBackground: false,
      )
          .listen((result) {
        locations = result;
        print("==========data: $locations");
      });

        trackLocation = false;
      }
    }


  checkGps() async {
    final GeolocationResult result = await Geolocation.isLocationOperational();
    if (result.isSuccessful) {

      print("Success");
    } else {
      print("Failed");
    }
  }

}
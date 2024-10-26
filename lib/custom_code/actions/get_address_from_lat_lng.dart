// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:geocoding/geocoding.dart';

Future<String> getAddressFromLatLng(LatLng givenLatLng) async {
  // Add your function code here!
  try {
    // Fetch the address using reverse geocoding
    List<Placemark> placemarks = await placemarkFromCoordinates(
        givenLatLng.latitude, givenLatLng.longitude);

    // Check if the placemarks list is not empty
    if (placemarks.isNotEmpty) {
      // Get the first placemark from the list
      Placemark place = placemarks.first;

      // Format the address (customize this based on your needs)
      String address =
          '${place.street}, ${place.locality}, ${place.administrativeArea}, ${place.country}';

      return address;
    } else {
      return 'No address available';
    }
  } catch (e) {
    // Return error message if something goes wrong
    return 'Failed to get address: $e';
  }
}

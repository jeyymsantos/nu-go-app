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

import 'package:flutter_nfc_kit/flutter_nfc_kit.dart';
import 'dart:io' show Platform;

Future scanNFC() async {
  // Add your function code here!

  var appState = FFAppState();

  NFCAvailability availability;
  try {
    availability = await FlutterNfcKit.nfcAvailability;
  } catch (e) {
    availability = NFCAvailability.not_supported;
  }

  if (availability == NFCAvailability.not_supported) {
    appState.scannedNFCresult = 'NFC is not supported on this device.';
    return;
  }

  try {
    // Poll for the NFC tag
    NFCTag tag = await FlutterNfcKit.poll();
    updateNfcTagInAppState(appState, tag);
  } catch (e) {
    appState.scannedNFCresult = 'Make sure that your NFC is enabled';
    print('There is an error scanning NFC tag $e');
    return;
  }
}

void updateNfcTagInAppState(FFAppState appState, NFCTag? tag) {
  if (tag == null) {
    appState.scannedNFCTag = 'No Tag';
    return;
  }
  // Get the ID of the scanned NFC tag
  var currentTagId = tag!.id;
  // Update the app state with the scanned NFC tag ID
  appState.update(() {
    appState.scannedNFCTag = currentTagId;
    appState.scannedNFCresult = 'School ID has been detected!';
  });
  return;
}

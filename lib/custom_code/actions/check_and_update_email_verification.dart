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

import 'package:firebase_auth/firebase_auth.dart';

Future checkAndUpdateEmailVerification() async {
  // Add your function code here!

  var appState = FFAppState();

  try {
    // Get the currently logged-in user
    User? user = FirebaseAuth.instance.currentUser;

    // If no user is logged in, return and set emailVerified to false
    if (user == null) {
      appState.emailVerified = false;
      return;
    }

    // Reload the user to get the latest email verification status
    await user.reload();
    User? updatedUser = FirebaseAuth.instance.currentUser;

    // Set the app state based on the updated email verification status
    appState.update(() {
      appState.emailVerified = updatedUser?.emailVerified ?? false;
    });
    print(appState.emailVerified);
    return;
  } catch (e) {
    // In case of an error, set the app state to false (not verified)
    FFAppState().emailVerified = false;
  }
}

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

Future<bool> checkUserPassword(String password) async {
  // Add your function code here!
  try {
    // Get the currently logged-in user
    User? user = FirebaseAuth.instance.currentUser;

    // Check if the user is logged in
    if (user == null) {
      return false; // User is not logged in
    }

    // Get the user's email
    String email = user.email!;

    // Create a new credential using the email and password
    AuthCredential credential =
        EmailAuthProvider.credential(email: email, password: password);

    // Re-authenticate the user with the provided password
    await user.reauthenticateWithCredential(credential);

    // If re-authentication is successful, return true
    return true;
  } catch (e) {
    // If there's an error (e.g., incorrect password), return false
    return false;
  }
}

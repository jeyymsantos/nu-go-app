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

Future validatePassword(String password) async {
  // Add your function code here!

  final RegExp hasUppercaseRegex = RegExp(r'[A-Z]');
  final RegExp hasLowercaseRegex = RegExp(r'[a-z]');
  final RegExp hasNumberRegex = RegExp(r'[0-9]');
  final RegExp hasSpecialCharacterRegex = RegExp(r'[!@#\$&*~]');

  // Check if password meets each condition and update app state accordingly
  var appState = FFAppState();
  appState.update(() {
    appState.hasUppercase = hasUppercaseRegex.hasMatch(password);
    appState.hasLowercase = hasLowercaseRegex.hasMatch(password);
    appState.hasNumber = hasNumberRegex.hasMatch(password);
    appState.hasSpecialCharacter = hasSpecialCharacterRegex.hasMatch(password);
    appState.hasMinimumLength = password.length >= 8;
  });
}

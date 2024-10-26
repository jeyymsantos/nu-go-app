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

Future<String> checkEmailViaRegEx(String email) async {
  // Add your function code here!

  const studentPattern = r"^[a-zA-Z0-9._-]+@students.nu-baliwag.edu.ph";
  const schoolPattern = r"^[a-zA-Z0-9._-]+@nu-baliwag.edu.ph";

  final bool isStudent = RegExp(studentPattern).hasMatch(email);
  final bool isSchool = RegExp(schoolPattern).hasMatch(email);

  if (isStudent) {
    return 'student';
  } else if (isSchool) {
    return 'school';
  } else {
    return 'invalid';
  }
}

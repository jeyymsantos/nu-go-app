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

Future onAppBackground() async {
// Add your function code here!
  WidgetsBinding.instance.addObserver(AppLifecycleObserver());
}

class AppLifecycleObserver with WidgetsBindingObserver {
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      // Do something when app is resumed
      checkAndUpdateEmailVerification();
      print('App resumes');
    } else if (state == AppLifecycleState.paused) {
      // Do something when app is paused
      print('App is in background');
    }
  }
}

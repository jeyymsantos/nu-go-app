// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAwSdT-RYL_RY5aW7CoVVWhT1yOTOo1IgQ',
    appId: '1:352493049987:web:e354008198442c2eba63b6',
    messagingSenderId: '352493049987',
    projectId: 'nu-go-4239c',
    authDomain: 'nu-go-4239c.firebaseapp.com',
    storageBucket: 'nu-go-4239c.appspot.com',
    measurementId: 'G-HZPDDRVTFN',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA9bYhdMbphv7zDZzc1vh3mN42fQ_YizY4',
    appId: '1:352493049987:android:aba9c01ec38face5ba63b6',
    messagingSenderId: '352493049987',
    projectId: 'nu-go-4239c',
    storageBucket: 'nu-go-4239c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCwXUd3UM-w2W1swqPqRnW5tiYO2jMkKI0',
    appId: '1:352493049987:ios:ccfdfd30ab339873ba63b6',
    messagingSenderId: '352493049987',
    projectId: 'nu-go-4239c',
    storageBucket: 'nu-go-4239c.appspot.com',
    iosBundleId: 'com.example.nuGoApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCwXUd3UM-w2W1swqPqRnW5tiYO2jMkKI0',
    appId: '1:352493049987:ios:607cafcd62f9e9b4ba63b6',
    messagingSenderId: '352493049987',
    projectId: 'nu-go-4239c',
    storageBucket: 'nu-go-4239c.appspot.com',
    iosBundleId: 'com.example.nuGoApp.RunnerTests',
  );
}
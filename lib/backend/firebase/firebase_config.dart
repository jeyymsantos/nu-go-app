import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAwSdT-RYL_RY5aW7CoVVWhT1yOTOo1IgQ",
            authDomain: "nu-go-4239c.firebaseapp.com",
            projectId: "nu-go-4239c",
            storageBucket: "nu-go-4239c.appspot.com",
            messagingSenderId: "352493049987",
            appId: "1:352493049987:web:e354008198442c2eba63b6",
            measurementId: "G-HZPDDRVTFN"));
  } else {
    await Firebase.initializeApp();
  }
}

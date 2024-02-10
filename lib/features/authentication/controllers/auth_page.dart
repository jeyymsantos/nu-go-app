import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:nu_go_app/features/authentication/screens/login.dart';
import 'package:nu_go_app/features/event/explore.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          // If Logged In
          if (snapshot.hasData) {
            return const Explore();
          }
          // NOT logged in
          else {
            return LoginPage();
          }
        },
      ),
    );
  }
}

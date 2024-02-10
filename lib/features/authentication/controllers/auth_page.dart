import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:nu_go_app/features/authentication/screens/login.dart';
import 'package:nu_go_app/features/authentication/screens/onboarding.dart';
import 'package:nu_go_app/features/event/explore.dart';
import 'package:nu_go_app/features/home/profile.dart';

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
            return ProfilePage();
          }
          // NOT logged in
          else {
            return const Onboarding();
          }
        },
      ),
    );
  }
}

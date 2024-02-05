import 'package:flutter/material.dart';
import 'package:nu_go_app/explore.dart';
import 'package:nu_go_app/join-event.dart';
import 'package:nu_go_app/onboarding.dart';
import 'package:nu_go_app/splash.dart';
import 'package:nu_go_app/splash_page.dart';
import 'package:nu_go_app/dashboard.dart';
import 'package:nu_go_app/utils/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: NUGoTheme.lightTheme,
      darkTheme: NUGoTheme.darkTheme,
      home: const JoinEvent(),
    );
  }
}
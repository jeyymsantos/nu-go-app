import 'package:flutter/material.dart';
import 'package:nu_go_app/utils/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: myAppTheme.lightTheme,
      darkTheme: myAppTheme.darkTheme,
    );
  }
}

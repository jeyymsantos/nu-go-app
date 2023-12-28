import "package:flutter/material.dart";
import "package:nu_go_app/utils/theme/custom_themes/elevated_button_theme.dart";
import "package:nu_go_app/utils/theme/custom_themes/text_theme.dart";

class myAppTheme {
  myAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: myTextTheme.lightTextTheme,
    elevatedButtonTheme: myElevatedButtonTheme.lightElevatedButtonTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: myTextTheme.darkTextTheme,
    elevatedButtonTheme: myElevatedButtonTheme.darkElevatedButtonTheme,
  );
}

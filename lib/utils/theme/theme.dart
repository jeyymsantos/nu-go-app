import 'package:flutter/material.dart';
import 'package:nu_go_app/utils/theme/custom_themes/app_bar_theme.dart';
import 'package:nu_go_app/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:nu_go_app/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:nu_go_app/utils/theme/custom_themes/chip_theme.dart';
import 'package:nu_go_app/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:nu_go_app/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:nu_go_app/utils/theme/custom_themes/text_field_theme.dart';
import 'package:nu_go_app/utils/theme/custom_themes/text_theme.dart';


class NUGoTheme{
  NUGoTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'ClanPro',
    brightness: Brightness.light,
    primaryColor:  Colors.blue,
    textTheme: NUGoTextTheme.lightTextTheme,
    chipTheme: NUGoChipTheme.lightChipTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: NUGoAppBarTheme.lightAppBarTheme,
    checkboxTheme: NUGoCheckboxTheme.lightBottomSheetTheme,
    bottomSheetTheme: NUGoBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: NUGoElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: NUGoOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: NUGoTextFormFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'ClanPro',
    brightness: Brightness.dark,
    primaryColor:  Colors.blue,
    textTheme: NUGoTextTheme.darkTextTheme,
    chipTheme: NUGoChipTheme.darkChipTheme,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: NUGoAppBarTheme.darkAppBarTheme,
    checkboxTheme: NUGoCheckboxTheme.darkBottomSheetTheme,
    bottomSheetTheme: NUGoBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: NUGoElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: NUGoOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: NUGoTextFormFieldTheme.darkInputDecorationTheme,
  );
}

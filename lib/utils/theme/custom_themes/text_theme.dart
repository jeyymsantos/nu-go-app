import 'package:flutter/material.dart';
import 'package:nu_go_app/utils/constants/colors.dart';

class NUGoTextTheme {
  NUGoTextTheme._();

  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: const TextStyle()
        .copyWith(fontSize: 32.0, fontWeight: FontWeight.bold, color: NUBlue),
    headlineMedium: const TextStyle()
        .copyWith(fontSize: 24.0, fontWeight: FontWeight.w600, color: NUBlue),
    headlineSmall: const TextStyle()
        .copyWith(fontSize: 18.0, fontWeight: FontWeight.w600, color: NUBlue),
    titleLarge: const TextStyle()
        .copyWith(fontSize: 16.0, fontWeight: FontWeight.w600, color: NUBlue),
    titleMedium: const TextStyle()
        .copyWith(fontSize: 16.0, fontWeight: FontWeight.w500, color: NUBlue),
    titleSmall: const TextStyle()
        .copyWith(fontSize: 16.0, fontWeight: FontWeight.w400, color: NUBlue),
    bodyLarge: const TextStyle()
        .copyWith(fontSize: 14.0, fontWeight: FontWeight.w500, color: NUBlue),
    bodyMedium: const TextStyle()
        .copyWith(fontSize: 14.0, fontWeight: FontWeight.normal, color: NUBlue),
    bodySmall: const TextStyle().copyWith(
        fontSize: 14.0,
        fontWeight: FontWeight.w500,
        color: NUBlue.withOpacity(0.5)),
    labelLarge: const TextStyle()
        .copyWith(fontSize: 12.0, fontWeight: FontWeight.normal, color: NUBlue),
    labelMedium: const TextStyle().copyWith(
        fontSize: 12.0,
        fontWeight: FontWeight.normal,
        color: NUBlue.withOpacity(0.5)),
  );

  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(
        fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.white),
    headlineMedium: const TextStyle().copyWith(
        fontSize: 24.0, fontWeight: FontWeight.w600, color: Colors.white),
    headlineSmall: const TextStyle().copyWith(
        fontSize: 18.0, fontWeight: FontWeight.w600, color: Colors.white),
    titleLarge: const TextStyle().copyWith(
        fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.white),
    titleMedium: const TextStyle().copyWith(
        fontSize: 16.0, fontWeight: FontWeight.w500, color: Colors.white),
    titleSmall: const TextStyle().copyWith(
        fontSize: 16.0, fontWeight: FontWeight.w400, color: Colors.white),
    bodyLarge: const TextStyle().copyWith(
        fontSize: 14.0, fontWeight: FontWeight.w500, color: Colors.white),
    bodyMedium: const TextStyle().copyWith(
        fontSize: 14.0, fontWeight: FontWeight.normal, color: Colors.white),
    bodySmall: const TextStyle().copyWith(
        fontSize: 14.0,
        fontWeight: FontWeight.w500,
        color: Colors.white.withOpacity(0.5)),
    labelLarge: const TextStyle().copyWith(
        fontSize: 12.0, fontWeight: FontWeight.normal, color: Colors.white),
    labelMedium: const TextStyle().copyWith(
        fontSize: 12.0,
        fontWeight: FontWeight.normal,
        color: Colors.white.withOpacity(0.5)),
  );
}

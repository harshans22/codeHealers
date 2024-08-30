import 'package:code_healers_sih/resources/color.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData getAppTheme() {
    return ThemeData(
      scaffoldBackgroundColor: AppColor.BG_COLOR,
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          fontSize: 16,
          
        ),
        displayMedium: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w700,
        ),
        displaySmall: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
        titleLarge: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w700
        ),
        titleMedium: TextStyle(
          fontSize: 16,
        ),
        titleSmall: TextStyle(
          fontSize: 14,
        ),
        bodyLarge: TextStyle(
          fontSize: 16,
        ),
        bodyMedium: TextStyle(
          fontSize: 14,
        ),
        bodySmall: TextStyle(fontSize: 12),
      ),
      colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: AppColor.lightBlue,
        onPrimary: AppColor.black,
        secondary: AppColor.white,
        onSecondary: AppColor.darkBlue,
        // surface: AppColor.BG_COLOR,
        // onSurface: AppColor.BLACK,
        // background: AppColor.BG_COLOR,
        // onBackground: AppColor.BLACK,
      ),
    );
  }
}

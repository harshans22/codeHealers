import 'package:code_healers_sih/resources/color.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData getAppTheme() {
    return ThemeData(
      //fontFamily: "OpenSans",
      scaffoldBackgroundColor: AppColor.BG_COLOR,
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
        displayMedium: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        displaySmall: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
        titleLarge: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),
        titleMedium: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold
        ),
        titleSmall: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold
        ),
        bodyLarge: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
        bodyMedium: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        bodySmall: TextStyle(fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
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

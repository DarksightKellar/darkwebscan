import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  static const accent = Color(0xff00AAAA);
  static const primaryColor = Color(0xff023473);
  static const grey = Color(0xff6D7890);
  static const error = Color(0xffFF5E5E);
  static const success = Color(0xff35CF4E);
  static const background = Color(0xffFFF9F2);
  static const fontColor = Color(0xff494949);
  static const fontTitle = Color(0xff464646);
}

final ThemeData appThemeLight = ThemeData(
    primarySwatch: Colors.blue,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    brightness: Brightness.light,
    primaryColor: AppColors.primaryColor,
    primaryColorBrightness: Brightness.dark,
    accentColor: AppColors.accent,
    accentColorBrightness: Brightness.dark,
    bottomAppBarColor: const Color(0xffffffff),
    cardColor: const Color(0xffffffff),
    highlightColor: AppColors.accent,
    splashColor: AppColors.accent,
    disabledColor: AppColors.grey,
    textSelectionColor: AppColors.accent,
    textSelectionHandleColor: AppColors.primaryColor,
    backgroundColor: AppColors.background,
    dialogBackgroundColor: AppColors.background,
    indicatorColor: AppColors.primaryColor,
    hintColor: AppColors.accent,
    dividerColor: const Color(0xff707070),
    errorColor: AppColors.error,
    fontFamily: GoogleFonts.play().fontFamily,
    textTheme: const TextTheme(
      headline4: TextStyle(
        fontSize: 24,
        color: AppColors.fontTitle,
        fontWeight: FontWeight.bold,
        letterSpacing: 1.1,
      ),
      bodyText1: TextStyle(
        color: AppColors.fontColor,
        fontSize: 14,
        height: 1.3,
      ),
    ));

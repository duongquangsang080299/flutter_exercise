import 'package:flutter/material.dart';
import 'package:soccer_club_app/core/color/colors.dart';
import 'package:soccer_club_app/core/typography/text_theme.dart';

class AppTheme {
  // Define light and dark theme data using respective functions
  static ThemeData lightTheme = _getLightThemeData();
  static ThemeData darkTheme = _getDarkThemeData();

  // Function to create the light theme data
  static ThemeData _getLightThemeData() {
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: AppColor.primary,
      hintColor: AppColor.secondary,
      colorScheme: const ColorScheme.light(
        primary: AppColor.primary,
        secondary: AppColor.secondary,
        onSecondary: AppColor.textOnSecondary,
      ),
      scaffoldBackgroundColor: AppColor.background,
      textTheme: CustomTextTheme.lightTextTheme,
    );
  }

  // Function to create the dark theme data
  static ThemeData _getDarkThemeData() {
    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: AppColor.primary,
      hintColor: AppColor.secondary,
      colorScheme: const ColorScheme.dark(
        primary: AppColor.primary,
        secondary: AppColor.secondary,
        onSecondary: AppColor.textOnSecondary,
      ),
      scaffoldBackgroundColor: AppColor.background,
      textTheme: CustomTextTheme.darkTextTheme,
    );
  }

  //  Define a custom color scheme for light theme
  static const ColorScheme customColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: AppColor.primary,
    onPrimary: AppColor.textOnPrimary,
    secondary: AppColor.secondary,
    onSecondary: AppColor.textOnSecondary,
    error: AppColor.error,
    onError: Colors.white,
    background: AppColor.background,
    onBackground: AppColor.textPrimary,
    surface: AppColor.surface,
    onSurface: AppColor.textPrimary,
  );

  // Define a custom color scheme for dark theme
  static const ColorScheme customDarkColorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: AppColor.primary,
    onPrimary: AppColor.textOnPrimary,
    secondary: AppColor.secondary,
    onSecondary: AppColor.textOnSecondary,
    error: AppColor.error,
    onError: Colors.white,
    background: AppColor.background,
    onBackground: AppColor.textPrimary,
    surface: AppColor.surface,
    onSurface: AppColor.textPrimary,
  );
}

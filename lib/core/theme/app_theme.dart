import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:soccer_club_app/core/color/colors.dart';

class AppTheme {
  const AppTheme();

  ThemeData get themeData {
    return ThemeData(
      // brightness: Brightness.light,
      primaryColor: AppColor.primary,
      hintColor: AppColor.secondary,
      colorScheme: _colorScheme,
      scaffoldBackgroundColor: AppColor.background,
      textTheme: _textTheme,
    );
  }

  ColorScheme get _colorScheme {
    return const ColorScheme.light(
      primary: AppColor.primary,
      secondary: AppColor.secondary,
      // onPrimary: AppColor.textOnPrimary,
      // onSecondary: AppColor.textOnSecondary,
      // error: AppColor.error,
      // onError: Colors.white,
      // background: AppColor.background,
      // onBackground: AppColor.textPrimary,
      // surface: AppColor.surface,
      // onSurface: AppColor.textPrimary,
    );
  }

  static final TextTheme _textTheme = TextTheme(
    displayLarge: GoogleFonts.poppins(
      color: AppColor.textPrimary,
      fontSize: 24,
      fontWeight: FontWeight.w500,
    ),
    displayMedium: GoogleFonts.poppins(
      color: AppColor.textPrimary,
      fontSize: 16,
      fontWeight: FontWeight.w600,
    ),
    titleMedium: GoogleFonts.poppins(
      color: AppColor.textSecondary,
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ),
  );
}

class AppDarkTheme extends AppTheme {
  const AppDarkTheme();

  @override
  ColorScheme get _colorScheme {
    return const ColorScheme.dark().copyWith(
      primary: AppColor.primary,
      secondary: AppColor.secondary,
      background: AppColor.background,
    );
  }
}

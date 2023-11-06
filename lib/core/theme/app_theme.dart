import 'package:flutter/material.dart';
import 'package:soccer_club_app/core/color/app_color.dart';
import 'package:soccer_club_app/core/typography/app_text_style.dart';

class AppTheme {
  const AppTheme();

  ThemeData get themeData {
    return ThemeData(
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColor.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
      ),
      primaryColor: AppColor.primary,
      scaffoldBackgroundColor: AppColor.secondary,
      colorScheme: _colorScheme,
      buttonTheme: _buttonTheme,
      cardTheme: const CardTheme(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
      ),
      elevatedButtonTheme: _elevatedButtonTheme,
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: _outlinedButtonStyle,
      ),
      iconTheme: const IconThemeData(
        color: AppColor.error,
        size: 24,
      ),
      textTheme: _textTheme,
    );
  }

  ThemeData get darkTheme {
    return ThemeData(
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColor.onTertiary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
      ),
      primaryColor: AppColor.transparent,
      scaffoldBackgroundColor: AppColor.tertiary,
      colorScheme: _darkColorScheme,
      cardTheme: const CardTheme(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
      ),
      iconTheme: const IconThemeData(
        color: AppColor.onTertiary,
        size: 24,
      ),
      textTheme: _textTheme,
    );
  }

  ColorScheme get _colorScheme {
    return const ColorScheme.light(
      brightness: Brightness.light,
      primary: AppColor.primary,
      onPrimary: AppColor.onPrimary,
      primaryContainer: AppColor.primaryContainer,
      secondary: AppColor.secondary,
      tertiary: AppColor.tertiary,
      onTertiary: AppColor.onTertiary,
      tertiaryContainer: AppColor.tertiaryContainer,
      onTertiaryContainer: AppColor.onTertiaryContainer,
      surface: AppColor.transparent,
      error: AppColor.error,
      onError: AppColor.onError,
      scrim: AppColor.scrim,
    );
  }

  ColorScheme get _darkColorScheme {
    return const ColorScheme.dark(
      brightness: Brightness.dark,
      primary: AppColor.error,
      onPrimary: AppColor.onPrimary,
      primaryContainer: AppColor.primaryContainer,
      secondary: AppColor.secondary,
      tertiary: AppColor.secondary,
      onTertiary: AppColor.onTertiary,
      tertiaryContainer: AppColor.tertiaryContainer,
      onTertiaryContainer: AppColor.onTertiaryContainer,
      surface: AppColor.transparent,
      error: AppColor.error,
      onError: AppColor.onError,
      scrim: AppColor.scrim,
    );
  }

  ButtonThemeData get _buttonTheme {
    return ButtonThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      buttonColor: AppColor.primary,
      padding: const EdgeInsets.all(12),
    );
  }

  ElevatedButtonThemeData get _elevatedButtonTheme {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColor.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.all(16),
      ),
    );
  }

  ButtonStyle get _outlinedButtonStyle {
    return ButtonStyle(
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: const BorderSide(),
        ),
      ),
    );
  }

  /// Define the text theme for the app
  static final TextTheme _textTheme = TextTheme(
    displayLarge: AppTextStyles.displayLarge,
    displayMedium: AppTextStyles.displayMedium,
    displaySmall: AppTextStyles.displaySmall,
    headlineLarge: AppTextStyles.headlineLarge,
    headlineMedium: AppTextStyles.headlineMedium,
    headlineSmall: AppTextStyles.headlineSmall,
    bodyLarge: AppTextStyles.bodyLarge,
    bodyMedium: AppTextStyles.bodyMeidum,
    bodySmall: AppTextStyles.bodySmall,
    titleLarge: AppTextStyles.titleLager,
    labelLarge: AppTextStyles.labelLarge,
    labelMedium: AppTextStyles.labelMedium,
    labelSmall: AppTextStyles.labelSmall,
  );
}

import 'package:flutter/material.dart';
import 'package:soccer_club_app/core/color/app_color.dart';
import 'package:soccer_club_app/core/typography/app_text_style.dart';

class AppTheme {
  const AppTheme();

  ThemeData get themeData {
    return ThemeData(
      appBarTheme: const AppBarTheme(
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
        color: AppColor.blackJet,
        size: 24,
      ),
      textTheme: _textTheme,
    );
  }

  ThemeData get darkTheme {
    return ThemeData(
      appBarTheme: const AppBarTheme(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
      ),
      primaryColor: AppColor.blackHex,
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
        color: AppColor.blackJet,
        size: 24,
      ),
      textTheme: _textTheme,
    );
  }

  ColorScheme get _colorScheme {
    return const ColorScheme.light(
      primary: AppColor.primary,
      secondary: AppColor.secondary,
      onSurface: AppColor.transparent,
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
    displayLarge: AppTextStyles.titleLarge,
    displayMedium: AppTextStyles.titleMedium,
    displaySmall: AppTextStyles.titleSmall,
    bodyLarge: AppTextStyles.bodyLarge,
    bodyMedium: AppTextStyles.bodyMeidum,
    bodySmall: AppTextStyles.bodySmall,
    labelLarge: AppTextStyles.labelLarge,
    headlineMedium: AppTextStyles.heading,
    labelSmall: AppTextStyles.subheading,
  );
}

class AppDarkTheme extends AppTheme {
  const AppDarkTheme();

  @override
  ColorScheme get _colorScheme {
    return const ColorScheme.dark().copyWith(
      primary: AppColor.primary,
      background: AppColor.secondary,
    );
  }
}

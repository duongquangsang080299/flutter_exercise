import 'package:flutter/material.dart';
import 'package:soccer_club_app/core/color/app_color.dart';
import 'package:soccer_club_app/core/typography/app_text_style.dart';

class AppTheme {
  const AppTheme();

  ThemeData get themeData {
    return ThemeData(
      primaryColor: AppColor.primaryColor,
      scaffoldBackgroundColor: AppColor.backgroundColor,
      colorScheme: _colorScheme,
      buttonTheme: _buttonTheme,
      elevatedButtonTheme: _elevatedButtonTheme,
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: _outlinedButtonStyle,
      ),
      iconTheme: const IconThemeData(
        color: AppColor.jetBlackColor,
        size: 24,
      ),
      textTheme: _textTheme,
    );
  }

  ColorScheme get _colorScheme {
    return const ColorScheme.light(
      primary: AppColor.primaryColor,
    );
  }

  ButtonThemeData get _buttonTheme {
    return ButtonThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      buttonColor: AppColor.primaryColor,
      padding: const EdgeInsets.all(12),
    );
  }

  ElevatedButtonThemeData get _elevatedButtonTheme {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColor.primaryColor,
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
    bodyLarge: AppTextStyles.extralBold,
    bodyMedium: AppTextStyles.bodyBold,
    titleMedium: AppTextStyles.subtitle,
    bodySmall: AppTextStyles.caption,
  );
}

class AppDarkTheme extends AppTheme {
  const AppDarkTheme();

  @override
  ColorScheme get _colorScheme {
    return const ColorScheme.dark().copyWith(
      primary: AppColor.primaryColor,
      background: AppColor.backgroundColor,
    );
  }
}

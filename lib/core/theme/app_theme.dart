import 'package:flutter/material.dart';
import 'package:soccer_club_app/core/color/app_color.dart';
import 'package:soccer_club_app/core/typography/app_text_style.dart';

class AppTheme {
  const AppTheme();

  ThemeData get themeData {
    return ThemeData(
      /// Set the primary color for app
      primaryColor: AppColor.primaryColor,

      /// Set the background color for scaffold
      scaffoldBackgroundColor: AppColor.backgroundColor,

      /// Define the color scheme for the app
      colorScheme: _colorScheme,

      // Customize the default button style
      buttonTheme: ButtonThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        buttonColor: AppColor.primaryColor,
        padding: const EdgeInsets.all(12),
      ),

      /// Customize the default elevated button style
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          padding: const EdgeInsets.all(16),
        ),
      ),

      iconTheme: const IconThemeData(
        color: AppColor.jetBlackColor,
        size: 24,
      ),

      /// Set the text theme for the app
      textTheme: _textTheme,
    );
  }

  ColorScheme get _colorScheme {
    return const ColorScheme.light(
      primary: AppColor.primaryColor,
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

/// Define the dark theme for the app
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

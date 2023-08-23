import 'package:flutter/material.dart';

import 'package:soccer_club_app/core/color/app_color.dart';

import 'package:soccer_club_app/core/typography/app_text_style.dart';

class AppTheme {
  /// Constructor for the AppTheme class
  const AppTheme();

  ThemeData get themeData {
    return ThemeData(
      /// brightness: Brightness.light,
      /// Set the primary color
      primary: AppColor.primaryColor,

      /// Set the background color
      background: AppColor.backgroundColor,

      /// Call the _colorScheme getter
      colorScheme: _colorScheme,

      /// Set scaffold background color
      scaffoldBackgroundColor: AppColor.backgroundColor,

      /// Set the text theme
      textTheme: _textTheme,
    );
  }

  ColorScheme get _colorScheme {
    return const ColorScheme.light(
      primary: AppColor.primaryColor,
      background: AppColor.backgroundColor,
    );
  }

  static final TextTheme _textTheme = TextTheme(
    /// Assign the defined text style
    displayLarge: AppTextStyles.titleLarge,
    displayMedium: AppTextStyles.titleMedium,
    bodyLarge: AppTextStyles.extralBold,
    bodyMedium: AppTextStyles.bodyBold,
    titleMedium: AppTextStyles.subtitle,
    bodySmall: AppTextStyles.caption,
  );
}

class AppDarkTheme extends AppTheme {
  /// Constructor for the AppDarkTheme class
  const AppDarkTheme();

  @override
  ColorScheme get _colorScheme {
    return const ColorScheme.dark().copyWith(
      primary: AppColor.primaryColor,
      background: AppColor.backgroundColor,
    );
  }
}

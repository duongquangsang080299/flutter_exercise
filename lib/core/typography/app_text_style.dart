import 'package:flutter/material.dart';
import 'package:soccer_club_app/core/color/app_color.dart';
import 'package:soccer_club_app/core/typography/app_fontweight.dart';

class AppTextStyles {
  /// Base text style generator function with common properties
  static TextStyle _baseTextStyle({
    required double fontSize,
    required FontWeight fontWeight,
    required Color color,
    required String fontFamily,
  }) {
    return TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontFamily: fontFamily,
      color: color,
    );
  }

  static TextStyle displayLarge = _baseTextStyle(
    fontFamily: 'Poppins',
    fontSize: 28,
    fontWeight: AppFontWeight.bold,
    color: AppColor.secondary,
  );

  static TextStyle displayMedium = _baseTextStyle(
    fontFamily: 'Poppins',
    fontSize: 27,
    fontWeight: AppFontWeight.bold,
    color: AppColor.blueMainly,
  );

  static TextStyle displaySmall = _baseTextStyle(
    fontFamily: 'Poppins',
    fontSize: 24,
    fontWeight: AppFontWeight.semiBold,
    color: AppColor.tertiary,
  );

  static TextStyle headlineLarge = _baseTextStyle(
    fontFamily: 'Poppins',
    fontSize: 20,
    fontWeight: AppFontWeight.semiBold,
    color: AppColor.secondary,
  );

  static TextStyle headlineMedium = _baseTextStyle(
    fontFamily: 'Poppins',
    fontSize: 18,
    fontWeight: AppFontWeight.medium,
    color: AppColor.tertiary,
  );

  static TextStyle headlineSmall = _baseTextStyle(
    fontFamily: 'Poppins',
    fontSize: 16,
    fontWeight: AppFontWeight.semiBold,
    color: AppColor.secondary,
  );

  static TextStyle bodyLarge = _baseTextStyle(
    fontFamily: 'Poppins',
    fontSize: 14,
    fontWeight: AppFontWeight.regular,
    color: AppColor.tertiary,
  );

  static TextStyle bodyMeidum = _baseTextStyle(
    fontFamily: 'Poppins',
    fontSize: 12,
    fontWeight: AppFontWeight.regular,
    color: AppColor.tertiary,
  );

  static TextStyle bodySmall = _baseTextStyle(
    fontFamily: 'Poppins',
    fontSize: 11,
    fontWeight: AppFontWeight.regular,
    color: AppColor.scrim,
  );

  static TextStyle titleLager = _baseTextStyle(
    fontFamily: 'Poppins',
    fontSize: 10,
    fontWeight: AppFontWeight.semiBold,
    color: AppColor.secondary,
  );

  static TextStyle labelLarge = _baseTextStyle(
    fontFamily: 'Poppins',
    fontSize: 15,
    fontWeight: AppFontWeight.semiBold,
    color: AppColor.onError,
  );

  static TextStyle labelMedium = _baseTextStyle(
    fontFamily: 'Poppins',
    fontSize: 10,
    fontWeight: AppFontWeight.semiBold,
    color: AppColor.secondary,
  );

  static TextStyle labelSmall = _baseTextStyle(
    fontFamily: 'Poppins',
    fontSize: 9,
    fontWeight: AppFontWeight.regular,
    color: AppColor.tertiary,
  );
}

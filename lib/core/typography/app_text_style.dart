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

  /// Text style for large titles
  static TextStyle titleLarge = _baseTextStyle(
    fontFamily: 'Poppins',
    fontSize: 24,
    fontWeight: AppFontWeight.semiBold,
    color: AppColor.primary,
  );

  /// Text style for medium titles
  static TextStyle titleMedium = _baseTextStyle(
    fontFamily: 'Poppins',
    fontSize: 16,
    fontWeight: AppFontWeight.medium,
    color: AppColor.secondary,
  );

  /// Text style for extra bold content
  static TextStyle titleSmall = _baseTextStyle(
    fontFamily: 'Poppins',
    fontSize: 14,
    fontWeight: AppFontWeight.regular,
    color: AppColor.tertiary,
  );

  /// Text style for bold content
  static TextStyle bodyLarge = _baseTextStyle(
    fontFamily: 'Poppins',
    fontSize: 18,
    fontWeight: AppFontWeight.medium,
    color: AppColor.tertiary,
  );
  static TextStyle bodyMeidum = _baseTextStyle(
    fontFamily: 'Poppins',
    fontSize: 12,
    fontWeight: AppFontWeight.regular,
    color: AppColor.tertiary,
  );

  /// Text style for subtitles
  static TextStyle labelLarge = _baseTextStyle(
    fontFamily: 'Poppins',
    fontSize: 11,
    fontWeight: AppFontWeight.regular,
    color: AppColor.error,
  );

  /// Text style for captions
  static TextStyle bodySmall = _baseTextStyle(
    fontFamily: 'Poppins',
    fontSize: 10,
    fontWeight: AppFontWeight.semiBold,
    color: AppColor.secondary,
  );

  static TextStyle heading = _baseTextStyle(
    fontFamily: 'Poppins',
    fontSize: 27,
    fontWeight: AppFontWeight.bold,
    color: AppColor.secondary,
  );

  static TextStyle subheading = _baseTextStyle(
    fontFamily: 'Poppins',
    fontSize: 20,
    fontWeight: AppFontWeight.bold,
    color: AppColor.secondary,
  );
}

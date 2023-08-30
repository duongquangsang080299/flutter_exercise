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
      color: color,
    );
  }

  /// Text style for large titles
  static TextStyle titleLarge = _baseTextStyle(
    fontFamily: 'Poppins',
    fontSize: 24,
    fontWeight: AppFontWeight.semiBold,
    color: AppColor.textPrimary,
  );

  /// Text style for medium titles
  static TextStyle titleMedium = _baseTextStyle(
    fontFamily: 'Poppins',
    fontSize: 16,
    fontWeight: AppFontWeight.medium,
    color: AppColor.textPrimary,
  );

  /// Text style for extra bold content
  static TextStyle extralBold = _baseTextStyle(
    fontFamily: 'Poppins',
    fontSize: 14,
    fontWeight: AppFontWeight.regular,
    color: AppColor.textPrimary,
  );

  /// Text style for bold content
  static TextStyle bodyBold = _baseTextStyle(
    fontFamily: 'Poppins',
    fontSize: 18,
    fontWeight: AppFontWeight.regular,
    color: AppColor.textPrimary,
  );

  /// Text style for subtitles
  static TextStyle subtitle = _baseTextStyle(
    fontFamily: 'Poppins',
    fontSize: 11,
    fontWeight: AppFontWeight.regular,
    color: AppColor.textSecondary,
  );

  /// Text style for captions
  static TextStyle caption = _baseTextStyle(
    fontFamily: 'Poppins',
    fontSize: 10,
    fontWeight: AppFontWeight.semiBold,
    color: AppColor.textSecondary,
  );
}

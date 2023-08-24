import 'package:flutter/material.dart';
import 'package:soccer_club_app/core/color/app_color.dart';
import 'package:soccer_club_app/core/typography/app_fontweight.dart';

class AppTextStyles {
  /// Base text style generator function with common properties
  static TextStyle _baseTextStyle({
    required double fontSize,
    required FontWeight fontWeight,
    required Color color,
    required double lineHeight,
  }) {
    return TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      height: lineHeight,
    );
  }

  /// Text style for large titles
  static TextStyle titleLarge = _baseTextStyle(
    fontSize: 24,
    fontWeight: AppFontWeight.semiBold,
    color: AppColor.textPrimary,
    lineHeight: 30,
  );

  /// Text style for medium titles
  static TextStyle titleMedium = _baseTextStyle(
    fontSize: 16,
    fontWeight: AppFontWeight.medium,
    color: AppColor.textPrimary,
    lineHeight: 25.5,
  );

  /// Text style for extra bold content
  static TextStyle extralBold = _baseTextStyle(
    fontSize: 14,
    fontWeight: AppFontWeight.regular,
    color: AppColor.textPrimary,
    lineHeight: 20,
  );

  /// Text style for bold content
  static TextStyle bodyBold = _baseTextStyle(
    fontSize: 18,
    fontWeight: AppFontWeight.regular,
    color: AppColor.textPrimary,
    lineHeight: 20,
  );

  /// Text style for subtitles
  static TextStyle subtitle = _baseTextStyle(
    fontSize: 11,
    fontWeight: AppFontWeight.regular,
    color: AppColor.textSecondary,
    lineHeight: 20,
  );

  /// Text style for captions
  static TextStyle caption = _baseTextStyle(
    fontSize: 10,
    fontWeight: AppFontWeight.semiBold,
    color: AppColor.textSecondary,
    lineHeight: 20,
  );
}

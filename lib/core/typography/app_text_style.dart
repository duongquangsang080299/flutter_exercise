import 'package:flutter/material.dart';
import 'package:soccer_club_app/core/color/app_color.dart';
import 'package:soccer_club_app/core/typography/app_fontweight.dart';
import 'package:soccer_club_app/core/utils/size_utils.dart';

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
    fontSize: getFontSize(24),
    fontWeight: AppFontWeight.semiBold,
    color: AppColor.primary,
  );

  /// Text style for medium titles
  static TextStyle titleMedium = _baseTextStyle(
    fontFamily: 'Poppins',
    fontSize: getFontSize(16),
    fontWeight: AppFontWeight.medium,
    color: AppColor.secondary,
  );

  /// Text style for extra bold content
  static TextStyle titleSmall = _baseTextStyle(
    fontFamily: 'Poppins',
    fontSize: getFontSize(14),
    fontWeight: AppFontWeight.regular,
    color: AppColor.tertiary,
  );

  /// Text style for bold content
  static TextStyle bodyLarge = _baseTextStyle(
    fontFamily: 'Poppins',
    fontSize: getFontSize(18),
    fontWeight: AppFontWeight.medium,
    color: AppColor.tertiary,
  );
  static TextStyle bodyMeidum = _baseTextStyle(
    fontFamily: 'Poppins',
    fontSize: getFontSize(12),
    fontWeight: AppFontWeight.regular,
    color: AppColor.tertiary,
  );

  /// Text style for subtitles
  static TextStyle descriptionSmall = _baseTextStyle(
    fontFamily: 'Poppins',
    fontSize: getFontSize(11),
    fontWeight: AppFontWeight.regular,
    color: AppColor.hexGray,
  );

  /// Text style for captions
  static TextStyle bodySmall = _baseTextStyle(
    fontFamily: 'Poppins',
    fontSize: getFontSize(10),
    fontWeight: AppFontWeight.semiBold,
    color: AppColor.secondary,
  );
}

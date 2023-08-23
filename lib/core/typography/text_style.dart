import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:soccer_club_app/core/color/colors.dart';

class AppTextStyles {
  static TextStyle _baseTextStyle({
    String fontFamily = 'Poppins',
    required double fontSize,
    required FontWeight fontWeight,
    required Color color,
    required double lineHeight,
  }) {
    return GoogleFonts.poppins(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      height: lineHeight,
    );
  }

  static TextStyle titleLarge = _baseTextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppColor.textPrimary,
    lineHeight: 30,
  );

  static TextStyle titleMedium = _baseTextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: AppColor.textPrimary,
    lineHeight: 25.5,
  );

  static TextStyle description = _baseTextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: AppColor.textPrimary,
    lineHeight: 20,
  );

  static TextStyle bodyBold = _baseTextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: AppColor.textPrimary,
    lineHeight: 20,
  );

  static TextStyle subtitle = _baseTextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: AppColor.textSecondary,
    lineHeight: 20,
  );

  static TextStyle caption = _baseTextStyle(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    color: AppColor.textSecondary,
    lineHeight: 20,
  );
}

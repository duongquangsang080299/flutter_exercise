import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:soccer_club_app/Color/color.dart';

class CustomTextTheme {
  static TextTheme lightTextTheme = TextTheme(
    displayLarge: GoogleFonts.poppins(
      color: AppColor.textPrimary,
      fontSize: 24,
      fontWeight: FontWeight.w500,
    ),
    displayMedium: GoogleFonts.poppins(
      color: AppColor.textPrimary,
      fontSize: 16,
      fontWeight: FontWeight.w600,
    ),
    titleMedium: GoogleFonts.poppins(
      color: AppColor.textSecondary,
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ),
  );

  static TextTheme darkTextTheme = TextTheme(
    displayLarge: GoogleFonts.poppins(
      color: Colors.white,
      fontSize: 24,
      fontWeight: FontWeight.w500,
    ),
    displayMedium: GoogleFonts.poppins(
      color: Colors.white,
      fontSize: 16,
      fontWeight: FontWeight.w600,
    ),
    titleMedium: GoogleFonts.poppins(
      color: Colors.white,
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ),
  );
}

import 'package:flutter/material.dart';

class AppColor {
  static const primary = Color(0xFF04764E);
  static const secondary = Color(0xFF04764E);
  static const background = Color(0xFFFFFFFF);
  static const surface = Color(0xFFF7F7F7);
  static const error = Color(0xFFFF3B30);
  static const textPrimary = Color(0xFF000000);
  static const textSecondary = Color(0xFF595959);
  static const textDescription = Color(0xFF000000);
  static const textOnPrimary = Color(0xFF04764E);
  static const textOnSecondary = Color(0xFFFFFFFF);
  static const textField = Color(0xFF8A8A8A);
  static const textCard = Color(0xFF6CAE97);
  static const boderColor = Color(0xFF373737);
}

const ColorScheme customColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: AppColor.primary,
  onPrimary: AppColor.textOnPrimary,
  secondary: AppColor.secondary,
  onSecondary: AppColor.textOnSecondary,
  error: AppColor.error,
  onError: Colors.white,
  background: AppColor.background,
  onBackground: AppColor.textPrimary,
  surface: AppColor.surface,
  onSurface: AppColor.textPrimary,
);

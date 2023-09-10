import 'package:flutter/material.dart';

/// Abstract class for defining app color
abstract class AppColor {
  ///Primary color for app
  static const primaryColor = Color(0xFF04764E);

  /// Background color for app
  static const secondaryColor = Colors.white;

  /// Primary tertiary color
  static const tertiary = Colors.black;

  /// Surface color
  static const surfaceColor = Color(0xFFF7F7F7);

  /// Error color for indicating errors
  static const errorColor = Colors.red;

  /// Secondary text color
  static const textSecondary = Color(0xFF595959);

  /// Text field color
  static const suvaGray = Color(0xFF8A8A8A);

  /// Text color for cards
  static const mainlyGreen = Color(0xFF6CAE97);

  /// Neon silver color for boder buttton and text in button
  static const neonSilverColor = Color(0xFFCBCBCB);

  /// Outline Color for images
  static const outLineColor = Color(0xFF00AD70);

  /// Jet black color
  static const jetBlackColor = Color(0xFF373737);

  ///White smoke color
  static const whiteSmokeColor = Color(0xFFF3F3F3);

  /// Flash White Color
  static const flashWhiteColor = Color(0xFFEFEFEF);
  static const hexColor = Color(0xFF070000);
 
  static const transparentColor = Colors.transparent;

  /// TextTypography color
  static const textTypography = Color.fromRGBO(0, 0, 0, 0.50);

  static const textDimGray = Color(0xFF656565);
  static const darkBlue= Color(0XFF5B6897);
  static const veryDarkBlue=Color(0xFF172A6B);
  static const linearGradientColor = [
    Color(0xFF29B986),
    Color(0xFF319471),
    Color(0xFF065539),
    Color(0xFF348B6C),
    Color(0xFF26CA90),
    Color(0xFF3FC194),
    Color(0xFF1F966C),
  ];
}

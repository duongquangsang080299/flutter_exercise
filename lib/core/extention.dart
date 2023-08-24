import 'package:flutter/material.dart';

extension ThemeContext on BuildContext {
  ThemeData get themeData => Theme.of(this);
  ColorScheme get colorScheme => themeData.colorScheme;
  TextTheme get textTheme => themeData.textTheme;
  TextTheme get textThemeData => Theme.of(this).textTheme;
}

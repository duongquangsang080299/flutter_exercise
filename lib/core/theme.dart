import 'package:flutter/material.dart';

class ColorName {
  static const primaryColor = Color(0xff04764E); // Define primary color
  static const textColor = Color(0xFF000000); // Define text color
  static const textDarkGray = Color(0xFF595959); // Define dark gray text color
  static const textLimeGreen =
      Color(0xFF04764E); // Define lime green text color
  static const textGrayButton = Color(0xFFCBCBCB); // Define gray button color
  static const textStack = Color(0xFF6CAE97); // Define stack color
  static const textContainer = Color(0xFFE3E3E3); // Define container color
  static const buttonBorder = Color(0xFF373737); // Define button border color
  static const buttonOutline = Colors.white; // Define button outline color
  static const buttonBorderGreen =
      Color(0xFF00AD70); // Define green button border color
  static const textPurple = Color(0xFF5B6897); // Define purple text color
  static const textDarkBlue = Color(0xFF173477); // Define dark blue text color
  static const textMostly = Color(0xFF5C709F); // Define mostly text color
}

// Define the color scheme for app
const ColorScheme colorScheme = ColorScheme(
  brightness: Brightness.light, // Set overall brightness
  primary: ColorName.primaryColor, // Use defined primary color
  onPrimary: ColorName.textColor, // Use defined text color as text on primary
  secondary:
      ColorName.textLimeGreen, // Use defined lime green color as secondary
  onSecondary:
      ColorName.textColor, // Use defined text color as text on secondary
  error: Colors.red, // Use red as error color
  onError: Colors.white, // Use white as error text color
  background:
      ColorName.textContainer, // Use defined container color as background
  onBackground:
      ColorName.textColor, // Use defined text color as text on background
  surface: ColorName.textStack, // Use defined stack color as surface color
  onSurface: ColorName.textColor, // Use defined text color as text on surface
);

// Define text styles for app
const TextTheme textTheme = TextTheme(
  displayLarge: TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold, // Use bold font weight
    color: ColorName.textColor, // Use defined text color
  ),
  displayMedium: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold, // Use bold font weight
      color: ColorName.primaryColor // Use defined text color
      ),
  titleMedium: TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal, // Use normal font weight
    color: ColorName.textDarkGray, // Use defined dark gray text color
  ),
  bodyLarge: TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal, // Use normal font weight
    color: ColorName.textColor, // Use defined text color
  ),
);

// Define the overall theme for app
final ThemeData theme = ThemeData(
  brightness: Brightness.light, // Set overall brightness
  primaryColor: colorScheme.primary, // Use defined primary color
  hintColor: colorScheme.secondary, // Use defined secondary color as hint color
  fontFamily: 'Poppins', // Use 'Poppins' font family
  textTheme: textTheme, // Apply the defined text styles
  colorScheme: colorScheme, // Apply the defined color scheme
  appBarTheme: AppBarTheme(
    color:
        colorScheme.primary, // Use defined primary color as app bar background
    elevation: 4, // Set app bar elevation the app bar
  ),
  iconTheme: const IconThemeData(
    color: Colors.white, // Use white as icon color
    size: 20, // Set icon size
  ),
);

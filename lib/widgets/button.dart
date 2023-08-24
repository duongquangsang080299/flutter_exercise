import 'package:flutter/material.dart';
import 'package:soccer_club_app/widgets/icon.dart';
import 'package:soccer_club_app/widget/text.dart';

/// Define SCButton widget with text
class SCButton extends StatelessWidget {
  const SCButton({
    // Text displayed on the button
    required this.text,
    // Callback function when the button is pressed
    this.onPressed,
    // Text color of the button
    this.textColor,
    // Optional key to uniquely identify the widget
    super.key,
    // Optional width of the button
    this.width,
    // Border color of the button (default is transparent)
    this.borderColor = Colors.transparent,
    // Background color of the button (default is blue)
    this.backgroundColor = Colors.blue,
  });
  final String text;
  final Color? textColor;
  final double? width;
  final Color backgroundColor;
  final Color borderColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: Theme.of(context).elevatedButtonTheme.style,
        child: SCText.scDisplayText(
          context,
          text: text,
        ),
      ),
    );
  }
}

/// Define SCButtonIcon widget with icon and text
class SCButtonIcon extends StatelessWidget {
  const SCButtonIcon({
    // Text displayed on the button
    required this.text,
    // Background color of the button (default is blue)
    this.backgroundColor = Colors.blue,
    // Callback function when the button is pressed
    this.onPressed,
    // Optional key to uniquely identify the widget
    super.key,
    // Optional icon for the button
    this.icon,
    // Optional width of the button
    this.width,
  });
  final String text;
  final double? width;
  final Color backgroundColor;
  final VoidCallback? onPressed;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton.icon(
        onPressed: onPressed,
        style: Theme.of(context).elevatedButtonTheme.style,
        icon: SCIcon(iconData: icon ?? Icons.email),
        label: SCText.scDisplayText(
          context,
          text: text,
        ),
      ),
    );
  }
}

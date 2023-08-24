import 'package:flutter/material.dart';
import 'package:soccer_club_app/widget/icon.dart';
import 'package:soccer_club_app/widget/text.dart';

/// SCButton widget with text
class SCButton extends StatelessWidget {
  const SCButton({
    required this.text,
    this.onPressed,
    this.textColor,
    super.key,
    this.width,
    this.borderColor = Colors.transparent,
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

        /// Use the elevated button style defined in the app theme
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
    required this.text,
    this.backgroundColor = Colors.blue,
    this.onPressed,
    super.key,
    this.icon,
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

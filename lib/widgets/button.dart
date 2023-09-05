import 'package:flutter/material.dart';
import 'package:soccer_club_app/core/color/app_color.dart';
// import 'package:soccer_club_app/widgets/icon.dart';
import 'package:soccer_club_app/widgets/text.dart';

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
    
    // Background color of the button (default is blue)
    this.backgroundColor,
    this.height,
    this.borderRadius, this.style,
  });
  final String text;
  final Color? textColor;
  final double? width;
  final Color? backgroundColor;
  final VoidCallback? onPressed;
  final double? height;
  final int? borderRadius;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
         style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            ),
          ),
        ),
        child: SCText.displayMedium(
          context,
          text: text,
          style: style,
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
    this.color,
    this.borderRadius,
  });
  final String text;
  final double? width;
  final Color backgroundColor;
  final VoidCallback? onPressed;
  final IconData? icon;
  final Color? color;
  final int? borderRadius;
  

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton.icon(
        onPressed: onPressed,
        style: Theme.of(context).elevatedButtonTheme.style,
        icon: const Icon(Icons.email),
        label: SCText.bodyLarge(
          context,
          text: text,
        ),
      ),
    );
  }
}

class SCOutlineButton extends StatelessWidget {
  const SCOutlineButton({
    required this.text,
    this.onPressed,
    super.key,
    this.width,
    this.height,
    this.borderRadius,
    this.style,
  });
  final String text;
  final VoidCallback? onPressed;
  final double? width;
  final double? height;
  final int? borderRadius;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: OutlinedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
              // Customize the button's border
              side: const BorderSide(
                color: AppColor.jetBlackColor,
              ),
            ),
          ),
        ),
        child: SCText.displayMedium(
          context,
          text: text,
          style: style,
        ),
      ),
    );
  }
}

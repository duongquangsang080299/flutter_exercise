import 'package:flutter/material.dart';
import 'package:soccer_club_app/core/utils/size_utils.dart';

// import 'package:soccer_club_app/widgets/icon.dart';
import 'package:soccer_club_app/widgets/text.dart';

/// Define SCButton widget with text
class SCButton extends StatelessWidget {
  const SCButton({
    required this.text,
    this.onPressed,
    this.textColor,
    super.key,
    this.backgroundColor,
    this.height = 60,
    this.borderRadius,
    this.style,
  });
  final String text;
  final Color? textColor;
  final Color? backgroundColor;
  final VoidCallback? onPressed;
  final double height;
  final int? borderRadius;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: context.getVerticalSize(height),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(backgroundColor),
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
    required this.text,
    this.onPressed,
    super.key,
    this.icon,
    this.color,
    this.borderRadius,
    this.style,
    this.height,
  });
  final String text;
  final VoidCallback? onPressed;
  final Widget? icon;
  final Color? color;
  final int? borderRadius;
  final TextStyle? style;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.getVerticalSize(60),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            ),
          ),
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: icon,
            ),
            Align(
              child: SCText.displaySmall(
                context,
                text: text,
                style: style,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SCOutlineButton extends StatelessWidget {
  const SCOutlineButton({
    required this.text,
    super.key,
    this.onPressed,
    this.height = 60,
    this.width = double.infinity,
    this.borderRadius,
    this.style,
  });
  final String text;
  final VoidCallback? onPressed;
  final double height;
  final double width;
  final int? borderRadius;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: context.getVerticalSize(height),
      child: OutlinedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
              // Customize the button's border
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

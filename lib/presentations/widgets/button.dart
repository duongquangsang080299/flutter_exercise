import 'package:flutter/material.dart';
import 'package:soccer_club_app/presentations/widgets/text.dart';

/// Define SCButton widget with text
class SCButton extends StatelessWidget {
  const SCButton({
    required this.text,
    required this.onPressed,
    super.key,
    this.backgroundColor,
    this.height = 60,
    this.style,
  });
  final Widget text;
  final Color? backgroundColor;
  final VoidCallback? onPressed;
  final double height;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: height,
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
        child: text,
      ),
    );
  }
}

/// Define SCButtonIcon widget with icon and text
class SCButtonIcon extends StatelessWidget {
  const SCButtonIcon({
    required this.text,
    required this.onPressed,
    super.key,
    this.icon,
    this.backgroundColor,
    this.color,
    this.style,
    this.height = 60,
  });
  final String text;
  final VoidCallback? onPressed;
  final Widget? icon;
  final Color? color;
  final Color? backgroundColor;
  final TextStyle? style;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: height,
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            icon!,
            SCText.headlineSmall(
              context,
              text: text,
              style: style,
            ),
            Opacity(
              opacity: 0,
              child: icon,
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
    Key? key,
    required this.onPressed,
    this.height = 60,
    this.width = double.infinity,
    this.style,
  }) : super(key: key);

  final String text;
  final VoidCallback? onPressed;
  final double height;
  final double width;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: height,
      child: OutlinedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            ),
          ),
        ),
        child: SCText.headlineSmall(
          context,
          text: text,
          style: style,
        ),
      ),
    );
  }
}

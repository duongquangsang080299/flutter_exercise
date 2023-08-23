import 'package:flutter/material.dart';

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
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            side: BorderSide(color: borderColor),
            borderRadius: const BorderRadius.all(Radius.circular(20)),
          ),
          padding: const EdgeInsets.symmetric(
            vertical: 30,
          ),
          elevation: 0,
        ),
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
          ),
        ),
      ),
    );
  }
}

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
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          padding: const EdgeInsets.symmetric(
            vertical: 30,
          ),
          elevation: 0,
        ),
        icon: Icon(icon ?? Icons.email),
        label: Text(text),
      ),
    );
  }
}

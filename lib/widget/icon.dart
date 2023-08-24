import 'package:flutter/material.dart';

class SCIcon extends StatelessWidget {
  const SCIcon({
    required this.iconData,
    super.key,
    this.iconColor,
    this.size,
    this.onPressed,
    this.padding = EdgeInsets.zero,
  });

  final IconData iconData;
  final Color? iconColor;
  final double? size;
  final VoidCallback? onPressed;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: padding,
      icon: Icon(
        iconData,
        size: size ?? 24,
      ),
      color: iconColor ?? Theme.of(context).iconTheme.color,
      onPressed: onPressed,
    );
  }
}

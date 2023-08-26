import 'package:flutter/material.dart';

class SCIcon extends StatelessWidget {
  const SCIcon({
    required this.iconData,
    super.key,
    this.color,
    this.width = 24,
    this.height = 24,
  });

  final IconData iconData;
  final Color? color;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Icon(
      iconData,
      color: color,
    );
  }
}

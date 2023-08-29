import 'package:flutter/material.dart';

class SCIcon extends StatelessWidget {
  /// Factory constructor to create an instance of SCIcon
  factory SCIcon({
    // Required icon data
    required IconData iconData,
    // Optional color
    Color? color,
    // Optional size
    double? size,
    // Optional onTap callback function
    VoidCallback? opTap,
  }) {
    return SCIcon._(
      iconData: iconData,
      color: color,
      size: size,
      // Pass the onTap callback to onPressed
      onPressed: opTap,
    );
  }

  const SCIcon._({
    required this.iconData,
    this.color,
    this.size,
    this.onPressed,
  });

  /// Icon data for the widget
  final IconData iconData;
  /// Color for the icon
  final Color? color;
  /// Size of the icon
  final double? size;
  /// Callback function for onTap event
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    // Wrap the Icon widget with a GestureDetector
    return GestureDetector(
      // Assign the onPressed callback to onTap
      onTap: onPressed,
      child: Icon(
        iconData,
        size: size,
        color: color,
      ),
    );
  }
}

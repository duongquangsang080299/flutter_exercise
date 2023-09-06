import 'package:flutter/material.dart';

class SCIcon extends StatelessWidget {
  /// Constructor for creating an instance of SCIcon
  const SCIcon({
    required this.iconData,
    super.key,
    this.color,
    this.size,
    this.onPressed,
  });

  /// Factory constructor for Email icon
  factory SCIcon.email({
    Color? color,
    double? size,
    VoidCallback? onPressed,
  }) {
    return SCIcon(
      iconData: Icons.email,
      color: color,
      size: size,
      onPressed: onPressed,
    );
  }

  /// Factory constructor for Notification icon
  factory SCIcon.notification({
    Color? color,
    double? size,
    VoidCallback? onPressed,
  }) {
    return SCIcon(
      iconData: Icons.notifications,
      color: color,
      size: size,
      onPressed: onPressed,
    );
  }

  /// Factory constructor for Drawer icon
  factory SCIcon.drawer({
    Color? color,
    double? size,
    VoidCallback? onPressed,
  }) {
    return SCIcon(
      iconData: Icons.menu,
      color: color,
      size: size,
      onPressed: onPressed,
    );
  }

  /// Factory constructor for Home icon
  factory SCIcon.home({
    Color? color,
    double? size,
    VoidCallback? onPressed,
  }) {
    return SCIcon(
      iconData: Icons.home,
      color: color,
      size: size,
      onPressed: onPressed,
    );
  }

  /// Factory constructor for Calendar icon
  factory SCIcon.calendar({
    Color? color,
    double? size,
    VoidCallback? onPressed,
  }) {
    return SCIcon(
      iconData: Icons.calendar_today,
      color: color,
      size: size,
      onPressed: onPressed,
    );
  }

  /// Factory constructor for Shop icon
  factory SCIcon.shop({
    Color? color,
    double? size,
    VoidCallback? onPressed,
  }) {
    return SCIcon(
      iconData: Icons.shopping_cart,
      color: color,
      size: size,
      onPressed: onPressed,
    );
  }

  /// Factory constructor for Tickets icon
  factory SCIcon.tickets({
    Color? color,
    double? size,
    VoidCallback? onPressed,
  }) {
    return SCIcon(
      iconData: Icons.confirmation_number,
      color: color,
      size: size,
      onPressed: onPressed,
    );
  }
  factory SCIcon.back({
    Color? color,
    double? size,
    VoidCallback? onPressed, 
  }) {
    return SCIcon(
      iconData: Icons.arrow_back,
      color: color,
      size: size,
      onPressed: onPressed,
    );
  }

  /// Factory constructor for Hidden icon
  factory SCIcon.hidden({
    Color? color,
    double? size,
    VoidCallback? onPressed,
  }) {
    return SCIcon(
      iconData: Icons.visibility_off,
      color: color,
      size: size,
      onPressed: onPressed,
    );
  }

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
    return IconButton(
      // Assign the onPressed callback to onTap
      onPressed: onPressed,
      icon: Icon(
        iconData,
        size: size,
        color: color,
      ),
    );
  }
}

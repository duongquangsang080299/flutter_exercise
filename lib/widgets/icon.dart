import 'package:flutter/material.dart';

class SCIcon extends StatelessWidget {
  /// Factory constructor to create an instance of SCIcon
  factory SCIcon ({
    // Required icon data
    required IconData iconData,
    // Optional color
    Color? color,
    // Optional size
    double? size,
    // Optional onTap callback function
    VoidCallback? onPressed,
  }) {
    return SCIcon._(
      iconData: iconData,
      color: color,
      size: size,
      // Pass the onTap callback to onPressed
      onPressed: onPressed,
    );
  }
   // Named constructor for Email icon
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

  // Named constructor for Notification icon
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

  // Named constructor for Drawer icon
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
   // Named constructor for Home icon
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

  // Named constructor for Calender icon
  factory SCIcon.fixtures({
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

  // Named constructor for Shop icon
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
// Named constructor for Tickets icon
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
  // Named constructor for Hiden icon
  factory SCIcon.hiden({
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

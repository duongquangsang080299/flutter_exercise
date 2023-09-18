import 'package:flutter/material.dart';

class SCIcon extends StatelessWidget {
  /// Constructor for creating an instance of SCIcon
  const SCIcon({
    required this.iconData,
    super.key,
    this.color,
    this.width,
    this.height,
    this.onPressed,
  });

  /// Factory constructor for Email icon
  factory SCIcon.email({
    Color? color,
    double? width,
    double? height,
    VoidCallback? onPressed,
  }) {
    return SCIcon(
      iconData: Icons.email,
      color: color,
      height: height,
      width: width,
      onPressed: onPressed,
    );
  }

  /// Factory constructor for Notification icon
  factory SCIcon.notification({
    Color? color,
    double? width,
    double? height,
    VoidCallback? onPressed,
  }) {
    return SCIcon(
      iconData: Icons.notifications,
      color: color,
      height: height,
      width: width,
      onPressed: onPressed,
    );
  }

  /// Factory constructor for Drawer icon
  factory SCIcon.menu({
    Color? color,
    double? width,
    double? height,
    VoidCallback? onPressed,
  }) {
    return SCIcon(
      iconData: Icons.menu,
      color: color,
      height: height,
      width: width,
      onPressed: onPressed,
    );
  }

  /// Factory constructor for Home icon
  factory SCIcon.home({
    Color? color,
    double? width,
    double? height,
    VoidCallback? onPressed,
  }) {
    return SCIcon(
      iconData: Icons.home,
      color: color,
      height: height,
      width: width,
      onPressed: onPressed,
    );
  }

  /// Factory constructor for Calendar icon
  factory SCIcon.calendar({
    Color? color,
    double? width,
    double? height,
    VoidCallback? onPressed,
  }) {
    return SCIcon(
      iconData: Icons.calendar_today_outlined,
      color: color,
      height: height,
      width: width,
      onPressed: onPressed,
    );
  }

  /// Factory constructor for Shop icon
  factory SCIcon.shop({
    Color? color,
    double? width,
    double? height,
    VoidCallback? onPressed,
  }) {
    return SCIcon(
      iconData: Icons.shopping_cart,
      color: color,
      height: height,
      width: width,
      onPressed: onPressed,
    );
  }

  /// Factory constructor for Tickets icon
  factory SCIcon.tickets({
    Color? color,
    double? width,
    double? height,
    VoidCallback? onPressed,
  }) {
    return SCIcon(
      iconData: Icons.confirmation_number,
      color: color,
      height: height,
      width: width,
      onPressed: onPressed,
    );
  }
  factory SCIcon.backward({
    Color? color,
    double? width,
    double? height,
    VoidCallback? onPressed,
  }) {
    return SCIcon(
      iconData: Icons.arrow_right,
      color: color,
      height: height,
      width: width,
      onPressed: onPressed,
    );
  }
  factory SCIcon.forward({
    Color? color,
    double? width,
    double? height,
    VoidCallback? onPressed,
  }) {
    return SCIcon(
      iconData: Icons.arrow_left,
      color: color,
      height: height,
      width: width,
      onPressed: onPressed,
    );
  }
  factory SCIcon.back({
    Color? color,
    double? width,
    double? height,
    VoidCallback? onPressed,
  }) {
    return SCIcon(
      iconData: Icons.arrow_back,
      color: color,
      height: height,
      width: width,
      onPressed: onPressed,
    );
  }
  factory SCIcon.suffix({
    Color? color,
    double? width,
    double? height,
    VoidCallback? onPressed,
  }) {
    return SCIcon(
      iconData: Icons.visibility,
      color: color,
      height: height,
      width: width,
      onPressed: onPressed,
    );
  }

  /// Factory constructor for Hidden icon
  factory SCIcon.hidden({
    Color? color,
    double? width,
    double? height,
    VoidCallback? onPressed,
  }) {
    return SCIcon(
      iconData: Icons.visibility_off,
      color: color,
      height: height,
      width: width,
      onPressed: onPressed,
    );
  }

  /// Icon data for the widget
  final IconData iconData;

  /// Color for the icon
  final Color? color;

  /// Size of the icon

  final double? width;
  final double? height;

  /// Callback function for onTap event
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    // Wrap the Icon widget with a GestureDetector
    return IconButton(
      // Assign the onPressed callback to onTap
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      icon: Icon(
        iconData,
        color: color,
      ),
    );
  }
}

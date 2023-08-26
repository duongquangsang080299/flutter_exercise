import 'package:flutter/material.dart';

class SCAppBar extends StatelessWidget {
  const SCAppBar({
    required this.title,
    required this.subtitle,
    required this.notificationIcon,
    required this.backgroundColor,
    required this.drawerIcon,
    required this.onNotificationPressed,
    required this.onDrawerPressed,
    super.key,
  });
  final String title;
  final String subtitle;
  final IconData notificationIcon;
  final Color? backgroundColor;
  final IconData drawerIcon;
  final VoidCallback onNotificationPressed;
  final VoidCallback onDrawerPressed;

  @override
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 14),
          ),
          Text(
            subtitle,
            style: const TextStyle(fontSize: 24),
          ),
        ],
      ),
      actions: [
        IconButton(
          icon: Icon(notificationIcon),
          onPressed: onNotificationPressed,
        ),
      ],
      backgroundColor: backgroundColor,
      leading: IconButton(
        icon: Icon(drawerIcon),
        onPressed: onDrawerPressed,
      ),
    );
  }
}

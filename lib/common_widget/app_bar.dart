import 'package:flutter/material.dart';

class SCAppBar extends StatelessWidget {
  const SCAppBar({
    required this.title,
    required this.subtitle,
    required this.notificationIcon,
    required this.backgroundColor,
    super.key,
  });
  final String title;
  final String subtitle;
  final IconData notificationIcon;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 14, color: Colors.white),
          ),
          Text(
            subtitle,
            style: const TextStyle(fontSize: 24, color: Colors.white),
          ),
        ],
      ),
      actions: [
        IconButton(
          icon: Icon(notificationIcon),
          onPressed: () {},
        ),
      ],
    );
  }
}

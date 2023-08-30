import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class SCAppBar extends StatelessWidget {
  const SCAppBar({
    required this.title,
    this.onNotificationPressed,
    this.onDrawerPressed,
    this.trailing,
    this.leading,
    this.subtitle,
    this.actions,
    this.onH,
    super.key,
  });

  factory SCAppBar.home({
    required String title,
    String? subtitle,
    Widget? leading,
    VoidCallback? onNotificationPressed,
    VoidCallback? onDrawerPressed,
  }) {
    return SCAppBar(
      title: title,
      leading: leading ?? const SizedBox.shrink(),
      subtitle: subtitle ?? '',
      onDrawerPressed: onDrawerPressed,
      onNotificationPressed: onNotificationPressed,
    );
  }

  factory SCAppBar.notHome({
    required String title,
    Icon? trailing,
    VoidCallback? onH,
  }) {
    return SCAppBar(
      title: title,
      trailing: trailing,
      onH: onH,
    );
  }

  final String title;
  final VoidCallback? onNotificationPressed;
  final VoidCallback? onDrawerPressed;
  final VoidCallback? onH;
  final Icon? trailing;
  final Widget? leading;
  final String? subtitle;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: (subtitle?.isEmpty ?? false) && false,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(30),
        ),
      ),
      titleSpacing: leading == null ? 0 : NavigationToolbar.kMiddleSpacing,
      leadingWidth: leading == null ? 0 : 56,
      leading: leading != null
          ? IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () => context.pop(),
            )
          : const SizedBox.shrink(),
      title: (subtitle?.isEmpty ?? false)
          ? Text(title)
          : Column(
              children: [
                Text(title),
                Text(subtitle ?? ''),
              ],
            ),
      actions: [
        if (subtitle?.isEmpty ?? false) ...[
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: onNotificationPressed,
          ),
          const SizedBox(width: 10),
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: onDrawerPressed,
          ),
        ] else
          IconButton(
            icon: trailing ?? const Icon(Icons.message),
            onPressed: onH,
          ),
      ],
    );
  }
}
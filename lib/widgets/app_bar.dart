import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// Define AppBar
class SCAppBar extends StatelessWidget {
  /// Constructor for the SCAppBar widget
  const SCAppBar({
    required this.title,
    this.onNotificationPressed,
    this.onDrawerPressed,
    this.trailing,
    this.leading,
    this.subtitle,
    this.actions,
    this.onPressed,
    super.key,
  });

  /// Factory constructor for creating a home app bar
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

  /// Factory constructor for creating a non-home app bar
  factory SCAppBar.secondHome({
    required String title,
    Icon? trailing,
    VoidCallback? onPressed,
  }) {
    return SCAppBar(
      title: title,
      trailing: trailing,
      onPressed: onPressed,
    );
  }

  final String title;
  final VoidCallback? onNotificationPressed;
  final VoidCallback? onDrawerPressed;
  final VoidCallback? onPressed;
  final Icon? trailing;
  final Widget? leading;
  final String? subtitle;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // Center title only if subtitle is not empty
      centerTitle: (subtitle?.isEmpty ?? false) && false,
      // Define the border shape of the app bar
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(30),
        ),
      ),

      /// Adjust title spacing based on presence of leading widget
      titleSpacing: leading == null ? 0 : NavigationToolbar.kMiddleSpacing,

      /// Set leading width based on presence of leading widget
      leadingWidth: leading == null ? 0 : 56,

      /// Define leading widget
      leading: leading != null
          ? IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () => context.pop(),
            )
          : const SizedBox.shrink(),
      // Define title widget
      title: (subtitle?.isEmpty ?? false)
          ? Text(title)
          : Column(
              children: [
                Text(title),
                Text(subtitle ?? ''),
              ],
            ),
      // Define actions
      actions: [
        if (subtitle?.isNotEmpty ?? false) ...[
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
            onPressed: onPressed,
          ),
      ],
    );
  }
}

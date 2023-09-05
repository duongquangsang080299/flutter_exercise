import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:soccer_club_app/widgets/text.dart';

/// Define AppBar
class SCAppBar extends StatelessWidget {
  /// Constructor for the SCAppBar widget
  const SCAppBar({
    required this.title,
    this.subtitle,
    this.onPressed,
    this.leading,
    this.actions,
    super.key,
    this.backgroundColor,
    this.centerTitle,
  });

  /// Factory constructor for creating a home app bar
  factory SCAppBar.home({
    required String title,
    Color? backgroundColor,
    bool? centerTitle,
    List<Widget>? actions,
    Widget? leading,
  }) {
    return SCAppBar(
      backgroundColor: backgroundColor,
      title: title,
      leading: leading,
      actions: actions,
      centerTitle: centerTitle,
    );
  }

  /// Factory constructor for creating a non-home app bar
  factory SCAppBar.secondHome({
    required String title,
    Color? backgroundColor,
    List<Widget>? actions,
    bool? centerTitle,
  }) {
    return SCAppBar(
      title: title,
      backgroundColor: backgroundColor,
      actions: actions,
      centerTitle: centerTitle,
    );
  }

  final String title;
  final String? subtitle;
  final VoidCallback? onPressed;
  final Widget? leading;
  final List<Widget>? actions;
  final Color? backgroundColor;
  final bool? centerTitle;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      /// Adjust title spacing based on presence of leading widget
      titleSpacing: leading == null ? 0 : NavigationToolbar.kMiddleSpacing,

      /// Set leading width based on presence of leading widget
      leadingWidth: leading == null ? 0 : 56,

      /// Define leading widget
      leading: leading != null
          ? IconButton(
              icon: leading ?? const SizedBox.shrink(),
              onPressed: () => onPressed ?? context.pop(),
            )
          : const SizedBox.shrink(),
      backgroundColor: backgroundColor,
      title: Column(
        children: [
          SCText.bodyMedium(context, text: title),
          if (subtitle?.isNotEmpty ?? false) Text(subtitle ?? ''),
        ],
      ),
      actions: [
        ...actions ?? [],
      ],
      centerTitle: centerTitle ?? true,
    );
  }
}
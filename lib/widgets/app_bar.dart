import 'package:flutter/material.dart';
import 'package:soccer_club_app/widgets/text.dart';

/// Define AppBar
class SCAppBar extends StatelessWidget implements PreferredSize {
  /// Constructor for the SCAppBar widget
  const SCAppBar({
    required this.title,
    super.key,
    this.subtitle,
    this.leading,
    this.actions = const [],
    this.backgroundColor,
    this.centerTitle,
    this.toolbarHeight,
    this.elevation,
  });

  /// Factory constructor for creating a home app bar
  factory SCAppBar.main({
    required String title,
    Color? backgroundColor,
    bool? centerTitle,
    double? elevation,
    Widget? leading,
    List<Widget>? actions,
    double? toolbarHeight,
  }) {
    return SCAppBar(
      backgroundColor: backgroundColor,
      title: title,
      leading: leading,
      elevation: elevation,
      centerTitle: centerTitle,
      actions: actions ?? [],
      toolbarHeight: toolbarHeight,
    );
  }

  /// Factory constructor for creating a non-home app bar
  factory SCAppBar.second({
    required String title,
    required String subtitle,
    Color? backgroundColor,
    double? elevation,
    bool? centerTitle,
    double? toolbarHeight,
    List<Widget>? actions,
  }) {
    return SCAppBar(
      title: title,
      subtitle: subtitle,
      backgroundColor: backgroundColor,
      actions: actions ?? [],
      elevation: elevation,
      toolbarHeight: toolbarHeight,
      centerTitle: centerTitle,
    );
  }

  final String title;
  final String? subtitle;
  final Widget? leading;
  final List<Widget> actions;
  final Color? backgroundColor;
  final bool? centerTitle;
  final double? toolbarHeight;
  final double? elevation;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      /// Define leading widget
      leadingWidth: 0,

      titleSpacing: 20,
      elevation: elevation,
      toolbarHeight: 185,
      leading: leading ?? const SizedBox.shrink(),
      backgroundColor: backgroundColor,
      title: Column(
        children: [
          SCText.displaySmall(context, text: title),
          if (subtitle?.isNotEmpty ?? false)
            SCText.displaySmall(context, text: subtitle ?? ''),
        ],
      ),
      actions: actions,
      centerTitle: centerTitle ?? true,
    );
  }

  @override
  Widget get child => throw UnimplementedError();

  @override
  Size get preferredSize => const Size.fromHeight(185);
}

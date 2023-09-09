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
  });

  /// Factory constructor for creating a home app bar
  factory SCAppBar.main({
    required String title,
    Color? backgroundColor,
    bool? centerTitle,
    Widget? leading,
    List<Widget>? actions,
  }) {
    return SCAppBar(
      backgroundColor: backgroundColor,
      title: title,
      leading: leading,
      centerTitle: centerTitle,
      actions: actions ?? [],
    );
  }

  /// Factory constructor for creating a non-home app bar
  factory SCAppBar.second({
    required String title,
    required String subtitle,
    Color? backgroundColor,
    bool? centerTitle,
    List<Widget>? actions,
  }) {
    return SCAppBar(
      title: title,
      subtitle: subtitle,
      backgroundColor: backgroundColor,
      actions: actions ?? [],
      centerTitle: centerTitle,
    );
  }

  final String title;
  final String? subtitle;
  final Widget? leading;
  final List<Widget> actions;
  final Color? backgroundColor;
  final bool? centerTitle;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      /// Define leading widget
      leadingWidth: 0,
      titleSpacing: 20,
      leading: leading ?? const SizedBox.shrink(),
      backgroundColor: backgroundColor,
      title: Transform(
        transform: Matrix4.translationValues(0, 40, 0),
        child: Column(
          children: [
            SCText.bodyMedium(context, text: title),
            if (subtitle?.isNotEmpty ?? false)
              SCText.bodyMedium(context, text: subtitle ?? ''),
          ],
        ),
      ),
      actions: actions,
      centerTitle: centerTitle ?? true,
    );
  }

  @override
  Widget get child => throw UnimplementedError();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

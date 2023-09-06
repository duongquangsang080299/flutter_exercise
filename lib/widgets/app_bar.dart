import 'package:flutter/material.dart';
import 'package:soccer_club_app/widgets/text.dart';

/// Define AppBar
class SCAppBar extends StatelessWidget {
  /// Constructor for the SCAppBar widget
  const SCAppBar({
    required this.title,
    super.key,
    this.subtitle,
    this.leading,
    this.actions= const [],
    this.backgroundColor,
    this.centerTitle,
  });

  /// Factory constructor for creating a home app bar
  factory SCAppBar.main({
    required String title,
    Color? backgroundColor,
    bool? centerTitle,
    Widget? leading,
  }) {
    return SCAppBar(
      backgroundColor: backgroundColor,
      title: title,
      leading: leading,
      centerTitle: centerTitle,
    );
  }

  /// Factory constructor for creating a non-home app bar
  factory SCAppBar.second({
    required String title,
    Color? backgroundColor,
    bool? centerTitle,
  }) {
    return SCAppBar(
      title: title,
      backgroundColor: backgroundColor,
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
      leading: leading ?? const SizedBox.shrink(),
      backgroundColor: backgroundColor,
      title: Column(
        children: [
          SCText.bodyMedium(context, text: title),
          if (subtitle?.isNotEmpty ?? false) Text(subtitle ?? ''),
        ],
      ),
      actions: actions,
      centerTitle: centerTitle ?? true,
    );
  }
}

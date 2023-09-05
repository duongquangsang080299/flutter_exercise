import 'package:flutter/material.dart';

/// Define AppBar
class SCAppBar extends StatelessWidget {
  /// Constructor for the SCAppBar widget
  const SCAppBar({
    required this.title,
    this.trailing,
    this.leading,
    this.actions,
    super.key,
    this.shape,
    this.backgroundColor,
    this.centerTitle,
  });

  /// Factory constructor for creating a home app bar
  factory SCAppBar.home({
    required String title,
    Color? backgroundColor,
    bool? centerTitle,
    ShapeBorder? shape,
    List<Widget>? actions,
    Widget? leading,
  }) {
    return SCAppBar(
      backgroundColor: backgroundColor,
      title: title,
      leading: leading,
      shape: shape,
      actions: actions,
      centerTitle: centerTitle,
    );
  }

  /// Factory constructor for creating a non-home app bar
  factory SCAppBar.secondHome({
    required String title,
    Color? backgroundColor,
    ShapeBorder? shape,
    List<Widget>? actions,
    Icon? trailing,
  }) {
    return SCAppBar(
      title: title,
      backgroundColor: backgroundColor,
      shape: shape,
      actions: actions,
      trailing: trailing,
    );
  }

  final String title;

  final Icon? trailing;
  final Widget? leading;
  final List<Widget>? actions;
  final ShapeBorder? shape;
  final Color? backgroundColor;
  final bool? centerTitle;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      leading: leading,
      title: Text(
        title,
      ),
      actions: const [],
      shape: shape,
      centerTitle: true,
    );
  }
}

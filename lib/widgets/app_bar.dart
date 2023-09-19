import 'package:flutter/material.dart';
import 'package:soccer_club_app/core/color/app_color.dart';
import 'package:soccer_club_app/core/extention/builder_context_extension.dart';
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
    this.flexibleSpace,
    this.fontSize,
    this.leadingWidth,
  });

  /// Factory constructor for creating a home app bar
  factory SCAppBar.main({
    required String title,
    Color? backgroundColor,
    bool? centerTitle,
    double? elevation,
    double? fontSize,
    Widget? leading,
    double? leadingWidth,
    List<Widget>? actions,
    double? toolbarHeight,
    Widget? flexibleSpace,
  }) {
    return SCAppBar(
      backgroundColor: backgroundColor,
      title: title,
      leading: leading,
      fontSize: fontSize,
      elevation: elevation,
      centerTitle: centerTitle,
      leadingWidth: leadingWidth,
      actions: actions ?? [],
      toolbarHeight: toolbarHeight,
      flexibleSpace: flexibleSpace,
    );
  }

  /// Factory constructor for creating a non-home app bar
  factory SCAppBar.second({
    required String title,
    required String subtitle,
    Color? backgroundColor,
    double? elevation,
    bool? centerTitle,
    double? leadingWidth,
    Widget? flexibleSpace,
    double? toolbarHeight,
    List<Widget>? actions,
  }) {
    return SCAppBar(
      title: title,
      subtitle: subtitle,
      backgroundColor: backgroundColor,
      actions: actions ?? [],
      leadingWidth: leadingWidth,
      elevation: elevation,
      flexibleSpace: flexibleSpace,
      toolbarHeight: toolbarHeight,
      centerTitle: centerTitle,
    );
  }

  final String title;
  final String? subtitle;
  final Widget? leading;
  final List<Widget> actions;
  final Color? backgroundColor;
  final double? fontSize;
  final bool? centerTitle;
  final double? toolbarHeight;
  final double? elevation;
  final double? leadingWidth;
  final Widget? flexibleSpace;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      /// Define leading widget
      leadingWidth: leadingWidth,
      titleSpacing: 30,
      elevation: elevation,
      flexibleSpace: flexibleSpace,
      toolbarHeight: toolbarHeight,
      leading: leading ?? const SizedBox.shrink(),
      backgroundColor: backgroundColor,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SCText.displaySmall(
            context,
            text: title,
            style: context.textTheme.displaySmall
                ?.copyWith(color: AppColor.secondary, fontSize: fontSize),
          ),
          if (subtitle?.isNotEmpty ?? false)
            SCText.displayLarge(
              context,
              text: subtitle ?? '',
              style: context.textTheme.displayLarge
                  ?.copyWith(color: AppColor.secondary),
            ),
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

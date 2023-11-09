import 'package:flutter/material.dart';
import 'package:soccer_club_app/core/color/app_color.dart';
import 'package:soccer_club_app/core/extention/builder_context_extension.dart';
import 'package:soccer_club_app/presentations/widgets/text.dart';

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
    this.centerTitle = false,
    this.toolbarHeight,
    this.elevation,
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

  @override
  Widget build(BuildContext context) {
    return AppBar(
      /// Define leading widget
      leadingWidth: leadingWidth,
      titleSpacing: 0,
      elevation: elevation,
      centerTitle: true,
      toolbarHeight: toolbarHeight,
      leading: leading ?? const SizedBox.shrink(),
      backgroundColor: backgroundColor,
      title: centerTitle!
          ? SCText.headlineLarge(context, text: title)
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SCText.bodyLarge(
                  context,
                  text: title,
                  style: context.textTheme.bodyLarge
                      ?.copyWith(color: AppColor.secondary, fontSize: fontSize),
                ),
                if (subtitle?.isNotEmpty ?? false)
                  SCText.displayLarge(
                    context,
                    text: subtitle ?? '',
                    style: context.textTheme.displayLarge
                        ?.copyWith(color: AppColor.secondary),
                  ),
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                    ),
                  ),
                ),
              ],
            ),
      actions: actions,
    );
  }

  @override
  Widget get child => throw UnimplementedError();

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
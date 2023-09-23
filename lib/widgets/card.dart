import 'package:flutter/material.dart';
import 'package:soccer_club_app/core/extention/builder_context_extension.dart';

/// Define Card Avatar
class SCCard extends StatelessWidget {
  const SCCard({
    Key? key,
    this.color,
    this.width,
    this.height,
    this.child,
    this.shape,
    this.selected,
    this.elevation,
    this.borderRadius,
  }) : super(key: key);

  /// Factory constructor for creating a card with an avatar
  factory SCCard.avatar({
    ShapeBorder? shape,
    Widget? child,
    double width = 120,
    double height = 122,
    bool? selected,
    Color? color,
    BorderRadiusGeometry? borderRadius,
  }) {
    return SCCard(
      shape: shape,
      width: width,
      height: height,
      selected: selected,
      color: color,
      borderRadius: borderRadius,
      child: child,
    );
  }

  /// Factory constructor for creating a card with a match
  factory SCCard.match({
    double? width,
    double? height,
    Widget? child,
    double? elevation,
    Color? color,
    ShapeBorder? shape,
  }) {
    return SCCard(
      width: width,
      height: height,
      elevation: elevation,
      shape: shape,
      color: color,
      child: child,
    );
  }

  final Color? color;
  final double? width;
  final double? height;
  final ShapeBorder? shape;
  final Widget? child;
  final bool? selected;
  final double? elevation;
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Card(
        margin: EdgeInsets.zero,
        elevation: elevation,
        shape: shape ??
            RoundedRectangleBorder(
              borderRadius: borderRadius ??
                  const BorderRadius.all(
                    Radius.circular(18),
                  ),
              side: BorderSide(
                color: selected ?? false
                    ? context.colorScheme.primary
                    : context.colorScheme.onSurface,
              ),
            ),
        color: color,
        child: child ?? Image.asset(''),
      ),
    );
  }
}

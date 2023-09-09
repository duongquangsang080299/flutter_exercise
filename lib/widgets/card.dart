import 'package:flutter/material.dart';
import 'package:soccer_club_app/core/extention.dart';

/// Define Card Avata
class SCCard extends StatelessWidget {
  const SCCard({
    super.key,
    this.color,
    this.width,
    this.height,
    this.child,
    this.shape,
    this.selected,
    this.elevation,
    this.borderRadius,
  });

  /// Factory constructor for creating a card with an avatar
  factory SCCard.avatar({
    ShapeBorder? shape,
    Widget? child,
    double width = 120,
    double height = 122,
    bool? selected,
    Color? color ,
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

  /// Factory constructor for creating a card with an match
  factory SCCard.match({
    ShapeBorder? shape,
    double? width,
    double? height,
    Widget? child,
  }) {
    return SCCard(
      shape: shape,
      width: width,
      height: height,
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
        elevation: elevation,
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius ??
              const BorderRadius.all(
                Radius.circular(10),
              ),
          side: BorderSide(
            color: selected ?? false
                ? context.colorScheme.primary
                : context.themeData.primaryColor,
          ),
        ),
        color: color,
        child: child ?? Image.asset('/default-avatar'),
      ),
    );
  }
}

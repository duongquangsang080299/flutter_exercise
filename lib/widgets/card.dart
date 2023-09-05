import 'package:flutter/material.dart';

/// Define Card Avata
class SCCard extends StatelessWidget {
  const SCCard({
    this.color,
    super.key,
    this.width,
    this.height,
    this.child,
    this.shape,
    this.selected,
  });

  /// Factory constructor for creating a simple box card.
  factory SCCard.box({
    ShapeBorder? shape,
    Color? color,
    double? width,
    double? height,
    Widget? child,
  }) {
    return SCCard(
      color: color,
      shape: shape,
      width: width,
      height: height,
      child: child,
    );
  }

  /// Factory constructor for creating a card with an avatar
  factory SCCard.avatar({
    ShapeBorder? shape,
    Widget? child,
    double? width,
    double? height,
    bool? selected,
  }) {
    return SCCard(
      shape: shape,
      width: width,
      height: height,
      selected: selected,
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

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);

    return SizedBox(
      height: height ?? 45,
      width: width ?? 45,
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: selected ?? false
                ? _theme.colorScheme.primary
                : _theme.primaryColor,
          ),
        ),
        color: color ?? Colors.white,
        child: child ?? Image.asset('/default-avatar'),
      ),
    );
  }
}

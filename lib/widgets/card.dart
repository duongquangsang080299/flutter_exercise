import 'package:flutter/material.dart';

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
  });


  /// Factory constructor for creating a card with an avatar
  factory SCCard.avatar({
    ShapeBorder? shape,
    Widget? child,
    double width = 45,
    double height = 45,
    bool? selected,
    Color color=Colors.white,
  }) {
    return SCCard(
      shape: shape,
      width: width,
      height: height,
      selected: selected,
      color: color,
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

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);

    return SizedBox(
      height: height,
      width: width,
      child: Card(
        elevation: elevation,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: selected ?? false
                ? _theme.colorScheme.primary
                : _theme.primaryColor,
          ),
        ),
        color: color ,
        child: child ?? Image.asset('/default-avatar'),
      ),
    );
  }
}

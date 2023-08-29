import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SCBackIcon extends StatelessWidget {
  /// Constructor for the SCBackIcon widget
  const SCBackIcon({
    required this.iconData,
    super.key,
    this.color,
    this.width = 24,
    this.height = 24,
    this.padding,
  });

  /// Properties for the SCBackIcon widget
  final IconData iconData;
  final Color? color;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    // Build method for the widget
    return SizedBox(
      height: height,
      width: width,
      child: IconButton(
        /// Apply padding or use zero padding if not provided
        padding: padding ?? EdgeInsets.zero,
        icon: const Icon(
          Icons.arrow_back,
        ),
        onPressed: () => context.pop(),
      ),
    );
  }
}

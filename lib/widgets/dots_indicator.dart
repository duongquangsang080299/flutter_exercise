import 'package:flutter/material.dart';

/// Define Dots Indicator widget
class SCDotsIndicator extends StatelessWidget {
  const SCDotsIndicator({
    required this.itemCount,
    required this.currentIndex,
    super.key,
    this.dotColor,
    this.activeDotColor,
  });

  /// Total number of dots
  final int itemCount;

  /// Current active dot index
  final int currentIndex;

  /// Color of inactive dots
  final Color? dotColor;

  /// Color of active dot
  final Color? activeDotColor;

  // Method to build the list of dot widgets
  List<Widget> buildDots() {
    final dots = <Widget>[];
    for (var i = 0; i < itemCount; i++) {
      dots.add(
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 4),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: i == currentIndex ? activeDotColor : dotColor,
          ),
        ),
      );
    }
    return dots;
  }

  @override
  Widget build(BuildContext context) {
    // Build a row of dots using the generated dot widgets
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: buildDots(),
    );
  }
}

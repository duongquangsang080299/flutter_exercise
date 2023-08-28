import 'package:flutter/material.dart';

/// Define bottom navigation bar widget
class SCBottomNavigationBar extends StatelessWidget {
  const SCBottomNavigationBar({
    required this.currentIndex,
    required this.items,
    required this.onItemSelected,
    required this.text,
    required this.width,
    required this.height,
    this.indicatorColor = Colors.amber,
    super.key,
  });

  /// The index of the currently selected navigation item.
  final int currentIndex;

  /// The list of navigation items to display.
  final List<BottomNavigationBarItem> items;

  /// Callback function when a navigation item is tapped.
  final ValueChanged<int> onItemSelected;

  /// The text to be displayed in the center of the navigation bar.
  final String text;

  /// The color used to highlight the selected navigation item.
  final Color? indicatorColor;

  /// The width of the custom scenter area of the navigation bar.
  final double width;

  /// The height of the custom center area of the navigation bar.
  final double height;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onItemSelected,
      items: items,
      selectedItemColor: indicatorColor,
    );
  }
}

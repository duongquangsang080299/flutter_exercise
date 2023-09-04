import 'package:flutter/material.dart';

class SCDotsIndicator extends StatelessWidget {
  const SCDotsIndicator({
    required this.itemCount, // Total number of items
    required this.currentIndex, // Index of the currently active item
    super.key, // Key to identify the widget (optional)
  });

  final int itemCount; // Total number of items
  final int currentIndex; // Index of the currently active item

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(itemCount, (index) {
        final isActive = index == currentIndex; // Check if this dot is active
        return Container(
          width: 10,
          height: 10,
          margin: const EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: isActive ? Colors.blue : Colors.grey, // Active dot color is blue, inactive is grey
          ),
        );
      }),
    );
  }
}
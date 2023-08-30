import 'package:flutter/material.dart';

class SCDotsIndicator extends StatelessWidget {
  // Constructor for the SCDotsIndicator widget
  const SCDotsIndicator({
    required this.itemCount,
    required this.currentIndex,
    this.width,
    this.height,
    super.key,
  });

  /// Total number of items
  final int itemCount;

  /// Index of the currently active item
  final int currentIndex;

  /// Width of each dot (optional)
  final double? width;

  /// Height of each dot (optional)
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(itemCount, (index) {
        /// Check if this dot is active
        final isActive = index == currentIndex;
        return Container(
          width: width ?? 10,
          height: height ?? 10,
          margin: const EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
            shape: BoxShape.circle,

            /// Active dot color is blue, inactive is grey
            color: isActive ? Colors.blue : Colors.grey,
          ),
        );
      }),
    );
  }
}

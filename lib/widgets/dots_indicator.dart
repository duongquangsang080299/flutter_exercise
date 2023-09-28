import 'package:flutter/material.dart';
import 'package:soccer_club_app/core/color/app_color.dart';

class SCDotsIndicator extends StatelessWidget {
  const SCDotsIndicator({
    required this.duration,
    this.isActive = false,
    super.key,
    this.width,
    this.height = 10,
  });

  final bool isActive;
  final double? width;
  final double? height;
  final Duration duration;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: isActive ? 25 : 10,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: isActive ? AppColor.primary : Colors.grey,
      ),
      duration: duration,
    );
  }
}

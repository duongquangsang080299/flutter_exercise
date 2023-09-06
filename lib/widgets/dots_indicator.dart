import 'package:flutter/material.dart';
import 'package:soccer_club_app/core/color/app_color.dart';

class SCDotsIndicator extends StatelessWidget {
  const SCDotsIndicator({
    this.isActive = false,
    super.key, 
  });

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: 23,
      height: 10,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isActive ? AppColor.primaryColor : Colors.grey, 
      ), duration:const Duration(microseconds: 500),
    );
  }
}

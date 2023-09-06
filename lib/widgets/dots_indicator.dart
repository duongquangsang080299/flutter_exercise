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
      width: isActive ? 25 : 10,
      height: 10,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
       borderRadius: BorderRadius.circular(20),
        color: isActive ? AppColor.primaryColor : Colors.grey, 
      ), duration:const Duration(microseconds: 500),
    );
  }
}

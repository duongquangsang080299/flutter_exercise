import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:soccer_club_app/core/color/app_color.dart';
import 'package:soccer_club_app/core/constant/image.dart';

/// Define Splash Screen
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Simulate a delay for demonstration purposes
    Timer(const Duration(seconds: 3), () {
      // Navigate to the next screen using GoRouter
      GoRouter.of(context).go('/onBoarding');
    });

    return Scaffold(
      backgroundColor: AppColor.primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              SCAssets.logoSplashScreen,
              width: 124,
              height: 146,
            ),
          ],
        ),
      ),
    );
  }
}

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart'; 
import 'package:soccer_club_app/core/color/app_color.dart';

/// Define Splash Screen
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Simulate a delay for demonstration purposes
    Timer(const Duration(seconds: 5), () {
      // Navigate to the next screen using GoRouter
      GoRouter.of(context).go('/onBoarding');
    });

    return Scaffold(
      backgroundColor: AppColor.primaryColor, 
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo image
            Image.asset(
              'assets/images/logo.png', 
              width: 123,
              height: 146,
            ),
          ],
        ),
      ),
    );
  }
}

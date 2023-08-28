import 'dart:async';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart'; // Import GoRouter if you're using it
import 'package:soccer_club_app/core/color/app_color.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Simulate a delay for demonstration purposes
    Timer(const Duration(seconds: 5), () {
      // Navigate to the next screen using GoRouter
      GoRouter.of(context).go('/onBoarding');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor, // Use your primary color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo image
            Image.asset(
              'assets/images/logo.png', // Replace with your image path
              width: 123,
              height: 146,
            ),
          ],
        ),
      ),
    );
  }
}

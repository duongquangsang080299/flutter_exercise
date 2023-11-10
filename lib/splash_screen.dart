import 'dart:async';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:soccer_club_app/core/color/app_color.dart';
import 'package:soccer_club_app/core/constant/assets.dart';
import 'package:soccer_club_app/core/router/router.dart';
import 'package:soccer_club_app/presentations/layout/scaffold.dart';

/// Define Splash Screen Class
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future check() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final key = (prefs.getBool('isLoggedIn') ?? false);
    if (key == false) {
      context.go(AppRoutes.onBoarding.path);
    } else {
      context.go(AppRoutes.homePage.path);
    }
  }

  @override
  Widget build(BuildContext context) {
    // Simulate a delay for demonstration purposes
    Timer(const Duration(seconds: 3), () {
      // Navigate to the next screen using GoRouter
      check();
    });

    return SCScaffold(
      backgroundColor: AppColor.primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
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

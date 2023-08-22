import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:soccer_club_app/onboarding.dart';
import 'package:soccer_club_app/splash_screen.dart';

enum AppRouteNames { onBoarding, splash }

final GoRouter appRouter = GoRouter(initialLocation: '/', routes: <GoRoute>[
  GoRoute(
    path: '/',
    name: AppRouteNames.splash.name,
    builder: (BuildContext context, GoRouterState state) =>
        const SplashScreen(),
  ),
  GoRoute(
    path: '/OnBoarding',
    name: AppRouteNames.onBoarding.name,
    builder: (BuildContext context, GoRouterState state) => const OnBoarding(),
  ),
]);

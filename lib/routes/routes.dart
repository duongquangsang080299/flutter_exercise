import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:soccer_club_app/presentation/auth/sign_in.dart';
import 'package:soccer_club_app/presentation/auth/sign_up.dart';
import 'package:soccer_club_app/presentation/pages/onboarding.dart';
import 'package:soccer_club_app/presentation/pages/player1.dart';
import 'package:soccer_club_app/presentation/pages/welcome_screen.dart';
import 'package:soccer_club_app/splash_screen.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: AppRoutes.splashScreen.path,
  routes: <GoRoute>[
    GoRoute(
      path: AppRoutes.home.path,
      name: AppRoutes.home.name,
      builder: (BuildContext context, GoRouterState state) =>
          const SplashScreen(),
    ),
    GoRoute(
      path: AppRoutes.onBoarding.path,
      name: AppRoutes.onBoarding.name,
      builder: (BuildContext context, GoRouterState state) =>
          const OnBoarding(),
    ),
    GoRoute(
      path: AppRoutes.splashScreen.path,
      name: AppRoutes.splashScreen.name,
      builder: (BuildContext context, GoRouterState state) =>
          const SplashScreen(),
    ),
    GoRoute(
      path: AppRoutes.welcomeScreen.path,
      name: AppRoutes.welcomeScreen.name,
      builder: (BuildContext context, GoRouterState state) =>
          const WelcomeScreen(),
    ),
     GoRoute(
      path: AppRoutes.signIn.path,
      name: AppRoutes.signIn.name,
      builder: (BuildContext context, GoRouterState state) =>
          const SignIn(),
    ),
    GoRoute(
      path: AppRoutes.signUp.path,
      name: AppRoutes.signUp.name,
      builder: (BuildContext context, GoRouterState state) =>
          const SignUp(),
    ),
    GoRoute(
      path: AppRoutes.playerPage.path,
      name: AppRoutes.playerPage.name,
      builder: (BuildContext context, GoRouterState state) =>
          const PlayerPage(),
    ),
  ],
);

/// Represents the app routes and their paths.
enum AppRoutes {
  home(
    name: 'home',
    path: '/',
  ),
  onBoarding(
    name: 'onBoarding',
    path: '/onBoarding',
  ),
  splashScreen(
    name: 'splashScreen',
    path: '/splashScreen',
  ),
  welcomeScreen(
    name: 'welcomeScreen',
    path: '/welcomeScreen',
  ),
  signIn(
    name: 'signIn',
    path: '/signIn',
  ),
  signUp(
    name: 'signUp',
    path: '/signUp',
  ),
  playerPage(
    name: 'playerPage',
    path: '/playerPage',
  );
  

  const AppRoutes({
    required this.name,
    required this.path,
  });

  /// Represents the route name
  ///
  /// Example: `AppRoutes.recipesList.name`
  /// Returns: 'recipesList'
  final String name;

  /// Represents the route path
  ///
  /// Example: `AppRoutes.recipesList.path`
  /// Returns: '/recipesList'
  final String path;

  @override
  String toString() => name;
}

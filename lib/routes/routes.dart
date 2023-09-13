import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:soccer_club_app/pages/Match/next_match_details.dart';
import 'package:soccer_club_app/pages/auth/sign_in.dart';
import 'package:soccer_club_app/pages/auth/sign_up.dart';
import 'package:soccer_club_app/pages/favourite/player.dart';
import 'package:soccer_club_app/pages/fixtures/fixtures.dart';
import 'package:soccer_club_app/pages/home/home.dart';
import 'package:soccer_club_app/pages/notifications/notifications.dart';
import 'package:soccer_club_app/pages/onboarding/onboarding.dart';
import 'package:soccer_club_app/pages/welcome/welcome.dart';
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
          const OnBoardingPage(),
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
          const WelcomePage(),
    ),
    GoRoute(
      path: AppRoutes.signIn.path,
      name: AppRoutes.signIn.name,
      builder: (BuildContext context, GoRouterState state) =>
          const SignInPage(),
    ),
    GoRoute(
      path: AppRoutes.signUp.path,
      name: AppRoutes.signUp.name,
      builder: (BuildContext context, GoRouterState state) =>
          const SignUpPage(),
    ),
    GoRoute(
      path: AppRoutes.playerPage.path,
      name: AppRoutes.playerPage.name,
      builder: (BuildContext context, GoRouterState state) =>
          const PlayerPage(),
    ),
    GoRoute(
      path: AppRoutes.homePage.path,
      name: AppRoutes.homePage.name,
      builder: (BuildContext context, GoRouterState state) => const HomePage(),
    ),
    GoRoute(
      path: AppRoutes.nextMatchPage.path,
      name: AppRoutes.nextMatchPage.name,
      builder: (BuildContext context, GoRouterState state) =>
          const NextMatchPage(),
    ),
    GoRoute(
      path: AppRoutes.fixturesPage.path,
      name: AppRoutes.fixturesPage.name,
      builder: (BuildContext context, GoRouterState state) =>
          const FixturesPage(),
    ),
    GoRoute(
      path: AppRoutes.notificationsPage.path,
      name: AppRoutes.notificationsPage.name,
      builder: (BuildContext context, GoRouterState state) =>
          const NotificationsPage(),
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
  ),
  homePage(
    name: 'homePage',
    path: '/homePage',
  ),
  nextMatchPage(
    name: 'nextMatchPage',
    path: '/nextMatchPage',
  ),
  fixturesPage(
    name: ' fixturesPage',
    path: '/fixturesPage',
  ),
  notificationsPage(
    name: ' notificationsPage',
    path: '/notificationsPage',
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

// ignore: depend_on_referenced_packages
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:soccer_club_app/core/theme/app_theme.dart';
import 'package:soccer_club_app/l10n/l10n.dart';
import 'package:soccer_club_app/routes/routes.dart';

void main() =>
// WidgetsFlutterBinding().ensureInitiallized();
// await Firebase.initializeApp();
    runApp(
      DevicePreview(
        builder: (context) => const MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: const AppTheme().themeData,
      darkTheme: const AppTheme().darkTheme,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'), // English
        Locale('es'), // Spanish
      ],
      routeInformationProvider: appRouter.routeInformationProvider,
      routeInformationParser: appRouter.routeInformationParser,
      routerDelegate: appRouter.routerDelegate,
    );
  }
}

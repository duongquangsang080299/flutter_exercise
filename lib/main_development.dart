// ignore: depend_on_referenced_packages
import 'dart:async';

import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:soccer_club_app/blocs/auth/sign_in/sign_in_bloc.dart';
import 'package:soccer_club_app/blocs/auth/sign_up/sign_up_bloc.dart';
import 'package:soccer_club_app/core/theme/app_theme.dart';
import 'package:soccer_club_app/core/routes/routes.dart';
import 'package:soccer_club_app/data/repositories/auth_repo.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
    apiKey: 'AIzaSyD9yxl_UPi_Lsdda067nDiUFY-ryvR-Jcs',
    appId: '1:532223591041:web:eacc3e4e428a4862944380',
    messagingSenderId: '532223591041',
    projectId: 'sporrt-club-app',
    authDomain: 'sporrt-club-app.firebaseapp.com',
    storageBucket: 'sporrt-club-app.appspot.com',
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => AuthRepo(),
        ),
        RepositoryProvider(
          create: (context) => AuthRepo(),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<SignUpBloc>(
            create: (context) =>
                SignUpBloc(repo: RepositoryProvider.of<AuthRepo>(context)),
          ),
          BlocProvider<SignInBloc>(
            create: (context) =>
                SignInBloc(repo: RepositoryProvider.of<AuthRepo>(context)),
          ),
        ],
        child: MaterialApp.router(
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
        ),
      ),
    );
  }
}

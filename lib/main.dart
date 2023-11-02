// // ignore: depend_on_referenced_packages
// import 'package:device_preview/device_preview.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';
// import 'package:soccer_club_app/auth_sign_in_repo/bloc/auth_sign_in_bloc.dart';
// import 'package:soccer_club_app/auth_sign_in_repo/sign_in_repo.dart';
// import 'package:soccer_club_app/auth_sign_up_repo/bloc/auth_sign_up_bloc.dart';
// import 'package:soccer_club_app/auth_sign_up_repo/sign_up_repo.dart';
// import 'package:soccer_club_app/core/theme/app_theme.dart';
// import 'package:soccer_club_app/l10n/l10n.dart';
// import 'package:soccer_club_app/routes/routes.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// // void main() => runApp(
// //       DevicePreview(
// //         builder: (context) => const MyApp(),
// //       ),
// //     );`
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(
//       options: const FirebaseOptions(
//     apiKey: 'AIzaSyBWvKbhHleRdcDqIPnoEpNJv70HWzCx46k',
//     appId: '1:532223591041:android:ab2856730b3ddf87944380',
//     messagingSenderId: '532223591041',
//     projectId: 'sporrt-club-app',
//     storageBucket: 'sporrt-club-app.appspot.com',
//   ));
//   runApp(
//     DevicePreview(
//       builder: (context) => const MyApp(),
//     ),
//   );
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MultiRepositoryProvider(
//       providers: [
//         RepositoryProvider(
//           create: (context) => SignUpRepo(),
//         ),
//         RepositoryProvider(
//           create: (context) => SignInRepo(),
//         ),
//       ],
//       child: MultiBlocProvider(
//         providers: [
//           BlocProvider(
//             create: (context) => AuthSignUpBloc(
//                 repo: RepositoryProvider.of<SignUpRepo>(context)),
//           ),
//           BlocProvider(
//             create: (context) => AuthSignInBloc(
//                 repo: RepositoryProvider.of<SignInRepo>(context)),
//           ),
//         ],
//         child: MaterialApp.router(
//           debugShowCheckedModeBanner: false,
//           theme: const AppTheme().themeData,
//           darkTheme: const AppTheme().darkTheme,
//           locale: DevicePreview.locale(context),
//           builder: DevicePreview.appBuilder,
//           localizationsDelegates: const [
//             AppLocalizations.delegate,
//             GlobalMaterialLocalizations.delegate,
//             GlobalWidgetsLocalizations.delegate,
//             GlobalCupertinoLocalizations.delegate,
//           ],
//           supportedLocales: const [
//             Locale('en'), // English
//             Locale('es'), // Spanish
//           ],
//           routeInformationProvider: appRouter.routeInformationProvider,
//           routeInformationParser: appRouter.routeInformationParser,
//           routerDelegate: appRouter.routerDelegate,
//         ),
//       ),
//     );
//   }
// }

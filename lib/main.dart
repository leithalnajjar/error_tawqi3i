import 'dart:io';

import 'package:error_tawqi3i/app_router.dart';
import 'package:error_tawqi3i/my_shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:tawqi3i_packages/tawqi3i_packages.dart';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

void main() async {
  HttpOverrides.global = MyHttpOverrides();
  WidgetsFlutterBinding.ensureInitialized();
  await mySharedPreferences.init();
  mySharedPreferences.accessToken = "de204269b3c54cf1a75e02c0ce55d119";
  await Tawqi3iPackages().setupTawqi3i(
      apiRoot: 'https://ec2-15-185-223-19.me-south-1.compute.amazonaws.com',
      apiTokenSharedPrefKey: keyAccessToken);

  runApp(MyApp(appRouter: AppRouter()));
}

class MyApp extends StatefulWidget {
  final AppRouter appRouter;

  const MyApp({Key? key, required this.appRouter}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: widget.appRouter.generateRoute,
      navigatorKey: Tawqi3iPackages.navigatorKey,
    );
  }
}

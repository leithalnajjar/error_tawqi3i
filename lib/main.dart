import 'package:error_tawqi3i/app_router.dart';
import 'package:error_tawqi3i/my_shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:tawqi3i_packages/tawqi3i_packages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await mySharedPreferences.init();
  mySharedPreferences.accessToken = "Zs5NTsAR4pcwzVljjG0vebZk35xOOBFy1O97XiB5";
  await Tawqi3iPackages().setupTawqi3i(
      apiRoot: 'https://tawqi3i-be-staging.sanad.gov.jo',
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
      navigatorKey: Tawqi3iPackages.navigatorKey,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: widget.appRouter.generateRoute,
    );
  }
}

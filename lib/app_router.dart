import 'package:error_tawqi3i/main_screen.dart';
import 'package:error_tawqi3i/splash_screen.dart';
import 'package:error_tawqi3i/tabs/home_tab.dart';
import 'package:error_tawqi3i/tabs/tawqi3i_tab.dart';
import 'package:error_tawqi3i/tabs/test_tab.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case SplashScreen.namedRoute:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      case MainScreen.namedRoute:
        return MaterialPageRoute(builder: (context) => const MainScreen());
    }
  }

  Route? generateHomeRoute(RouteSettings settings) {
    switch (settings.name) {
      case HomeTab.namedRoute:
        return MaterialPageRoute(builder: (context) => const HomeTab());
      case Tawqi3iTab.namedRoute:
        return MaterialPageRoute(builder: (context) => const Tawqi3iTab());
    }
  }

  Route? generateTestRoute(RouteSettings settings) {
    switch (settings.name) {
      case TestTab.namedRoute:
        return MaterialPageRoute(builder: (context) => const TestTab());

    }
  }
}

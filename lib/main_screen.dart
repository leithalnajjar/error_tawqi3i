import 'package:error_tawqi3i/app_router.dart';
import 'package:error_tawqi3i/tabs/home_tab.dart';
import 'package:error_tawqi3i/tabs/test_tab.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  static const String namedRoute = "/main_screen";

  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

List<GlobalKey> navigatorKeys = [
  GlobalKey(),
  GlobalKey(),
];

class _MainScreenState extends State<MainScreen> {
  int selectedTab = 0;

  var navigator = [
    Navigator(
      key: navigatorKeys[0],
      initialRoute: HomeTab.namedRoute,
      onGenerateRoute: AppRouter().generateHomeRoute,
    ),
    Navigator(
      key: navigatorKeys[1],
      initialRoute: TestTab.namedRoute,
      onGenerateRoute: AppRouter().generateTestRoute,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: selectedTab, children: navigator),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            activeIcon: Icon(Icons.home),
            label: "home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            activeIcon: Icon(Icons.settings),
            label: "test",
          ),
        ],
        currentIndex: selectedTab,
        onTap: (value) {
          selectedTab = value;
          setState(() {});
        },
      ),
    );
  }
}

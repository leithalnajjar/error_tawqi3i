import 'package:error_tawqi3i/tabs/tawqi3i_tab.dart';
import 'package:flutter/material.dart';

class HomeTab extends StatefulWidget {
  static const String namedRoute = "/home_tab";

  const HomeTab({Key? key}) : super(key: key);

  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.of(context).pushNamed(Tawqi3iTab.namedRoute);
          },
          child: Text('Tawqi3i'),
        ),
      ),
    );
  }
}

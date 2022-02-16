import 'package:flutter/material.dart';
import 'package:tawqi3i_packages/tawqi3i_packages.dart';

class Tawqi3iTab extends StatefulWidget {
  static const namedRoute = "/tawq3i_tab";
  const Tawqi3iTab({Key? key}) : super(key: key);

  @override
  _Tawqi3iTabState createState() => _Tawqi3iTabState();
}

class _Tawqi3iTabState extends State<Tawqi3iTab> {

  @override
  void initState() {
    Tawqi3iPackages().setupSenderId("9991011337");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(top:12.0),
        child: MyDocumentsView(),
      ),
    );
  }
}

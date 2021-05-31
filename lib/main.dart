import 'package:flutter/material.dart';
import 'package:jikbang_refactoring/screen/main/concierge_screen.dart';
import 'package:jikbang_refactoring/screen/main/estate_screen.dart';
import 'package:jikbang_refactoring/screen/main/myhouse_screen.dart';
import 'package:jikbang_refactoring/widget/bottom_nav_bar.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '직방',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.white,
        accentColor: Colors.white,
      ),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: <Widget>[
              RealEstate(),
              MyHouse(),
              Concierge(),
            ],
          ),
          bottomNavigationBar: BottomNavBar(),
        ),
      ),
    );
  }
}

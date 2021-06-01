import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jikbang_refactoring/screen/main/concierge_screen.dart';
import 'package:jikbang_refactoring/screen/main/estate_screen.dart';
import 'package:jikbang_refactoring/screen/main/myhouse_screen.dart';
import 'package:jikbang_refactoring/widget/bottom_nav_bar.dart';

class MainScreen extends StatefulWidget{
  @override
  _MainScreen createState() => _MainScreen();
}

class _MainScreen extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '직방',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.white,
        accentColor: Colors.white,
      ),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          body:
          TabBarView(
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
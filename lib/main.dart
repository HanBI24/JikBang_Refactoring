import 'package:flutter/material.dart';
import 'package:jikbang_refactoring/main_screen.dart';
import 'package:jikbang_refactoring/screen/main/concierge_screen.dart';
import 'package:jikbang_refactoring/screen/main/estate_screen.dart';
import 'package:jikbang_refactoring/screen/main/myhouse_screen.dart';
import 'package:jikbang_refactoring/splash/animation_screen.dart';
import 'package:jikbang_refactoring/widget/bottom_nav_bar.dart';

import 'globals_variable.dart';


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
        debugShowCheckedModeBanner: false,
        theme: isDark ? ThemeData.light() : ThemeData.dark(),
        darkTheme: ThemeData.dark(),
        home: Stack(
          textDirection: TextDirection.ltr,
            children: <Widget>[
              Scaffold(
                  body: MainScreen()
              ),
              IgnorePointer(
                  child: AnimationScreen(
                      color: Colors.white
                  )
              )
            ]
        )
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class AccuracySearchMyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      darkTheme: ThemeData.dark(),
      home: AccuracySearch(),
    );
  }
}

class AccuracySearch extends StatefulWidget {
  @override
  _AccuracySearch createState() => _AccuracySearch();
}

class _AccuracySearch extends State<AccuracySearch> {

  @override
  Widget build(BuildContext context) {
    FocusScopeNode currentFocus = FocusScope.of(context);
    currentFocus.unfocus();

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Text('\n X    위치보기\n                                                          ',style: TextStyle(fontSize: 25),),
            Container(
              width: double.infinity,
              child: Column(
                children: <Widget>[
                  Image.asset('images/accuracylocation.PNG'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHouse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'My House',
          style: TextStyle(fontSize: 32),
        ),
      ),
    );
  }
}
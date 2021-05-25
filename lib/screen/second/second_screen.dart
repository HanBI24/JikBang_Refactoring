import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: SafeArea(
            child: Scaffold(
              appBar: AppBar(

              ),
      body: Container(
        child: Column(
          children: [Text('원룸', style: TextStyle(fontSize: 30)), Text('전, 월세')],
        ),
      ),
    ),
        ),
    );
  }
}

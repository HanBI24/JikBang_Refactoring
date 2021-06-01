import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(),
        darkTheme: ThemeData.dark(),
        home: Scaffold(
            appBar: AppBar(
            ),
            body: Center(
                child: SliderWidget1()
            )
        )
    );
  }
}

class SliderWidget1 extends StatefulWidget {
  @override
  SliderWidget1State createState() => new SliderWidget1State();
}

class SliderWidget1State extends State{

  int valueHolder = 100;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
            children: [
              Text('                                                            '
                  '\n보증금', style: TextStyle(fontSize: 25,color: Colors.orange)),
              Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Slider(
                      value: valueHolder.toDouble(),
                      min: 100,
                      max: 1000,
                      divisions: 1000,
                      activeColor: Colors.green,
                      inactiveColor: Colors.grey,
                      label: '${valueHolder.round()}',
                      onChanged: (double newValue) {
                        setState(() {
                          valueHolder = newValue.round();
                        });
                      },
                      semanticFormatterCallback: (double newValue) {
                        return '${newValue.round()}';
                      }
                  )),
              Text('$valueHolder만원\n', style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.orange),)
            ]
        ));
  }

}
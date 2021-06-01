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
                child: SliderWidget2()
            )
        )
    );
  }
}

class SliderWidget2 extends StatefulWidget {
  @override
  SliderWidget2State createState() => new SliderWidget2State();
}

class SliderWidget2State extends State{

  int valueHolder = 10;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
            children: [
              Text('                                                            '
                  '\n월세', style: TextStyle(fontSize: 25,color: Colors.orange)),
              Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Slider(
                      value: valueHolder.toDouble(),
                      min: 10,
                      max: 200,
                      divisions: 100,
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
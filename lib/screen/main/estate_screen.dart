import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jikbang_refactoring/screen/second/second_screen.dart';
import 'package:jikbang_refactoring/screen/settings/setting_screen.dart';

class RealEstate extends StatefulWidget {
  @override
  _RealEstate createState() => _RealEstate();
}

class _RealEstate extends State<RealEstate> {
  void _onLoading() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Container(
          child: Dialog(
            backgroundColor: Colors.transparent,
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset('images/loading.gif', width: 100, fit: BoxFit.contain,)
              ],
            ),
          ),
        );
      },
    );
    new Future.delayed(new Duration(seconds: 1), () {
      Navigator.of(context, rootNavigator: true)
          .pop();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      darkTheme: ThemeData.dark(),
      home: Scaffold(
        backgroundColor: Colors.black12,
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(left: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '어떤 집을 찾고 계세요?',
                    style: TextStyle(fontSize: 20),
                  ),
                  Container(
                      alignment: Alignment.centerRight,
                      child: Row(
                        children: <Widget>[
                          Container(
                            width: 130,
                          ),
                          GestureDetector(
                            child: Icon(Icons.settings),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SettingScreen()));
                            },
                          )
                        ],
                      ))
                ],
              ),
            ),
            Column(
              children: <Widget>[
                GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  primary: false,
                  childAspectRatio: 1.3,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            onPrimary: Colors.black,
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Text('아파트', style: TextStyle(fontSize: 28)),
                                Text('매매/전, 월세\n신축분양')
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Image.asset('images/apt.PNG',
                                    width: 60,
                                    height: 130,
                                    fit: BoxFit.scaleDown),
                              ],
                            ),
                          ],
                        ),
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            alignment: Alignment.centerLeft,
                            primary: Colors.white,
                            onPrimary: Colors.black,
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Text('빌라    ', style: TextStyle(fontSize: 28)),
                                Text('신축분양/매매\n전, 월세')
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Image.asset('images/tworoom.PNG',
                                    width: 60,
                                    height: 130,
                                    fit: BoxFit.scaleDown),
                              ],
                            ),
                          ],
                        ),
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            onPrimary: Colors.black,
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Text('원룸', style: TextStyle(fontSize: 28)),
                                Text('전, 월세  '),
                                // Image.asset('images/hallym.jpg',width: 30,height: 30),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Image.asset('images/oneroom.PNG',
                                    width: 90,
                                    height: 130,
                                    fit: BoxFit.scaleDown),
                              ],
                            ),
                          ],
                        ),
                        onPressed: () {
                          _onLoading();
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SecondScreen()));
                        },
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            onPrimary: Colors.black,
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Text('오피스텔', style: TextStyle(fontSize: 28)),
                                Text('도시형생활주택\n전, 월세')
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Image.asset('images/op.PNG',
                                    width: 40,
                                    height: 130,
                                    fit: BoxFit.scaleDown),
                              ],
                            ),
                          ],
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        )),
      ),
    );
  }
}

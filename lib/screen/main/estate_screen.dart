import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jikbang_refactoring/screen/second/second_screen.dart';

class RealEstate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Text(
                                    '아파트',
                                    style: TextStyle(fontSize: 28)
                                ),
                                Text('매매/전, 월세\n신축분양')
                              ],
                            ),
                          ],
                        ),
                        onPressed: (){},
                        ),
                      ),
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          alignment: Alignment.centerLeft,
                            primary: Colors.white,
                            onPrimary: Colors.black,
                            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Text(
                                    '빌라    ',
                                    style: TextStyle(fontSize: 28)
                                ),
                                Text('신축분양/매매\n전, 월세')
                              ],
                            ),
                          ],
                        ),
                        onPressed: (){},
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            onPrimary: Colors.black,
                            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Text(
                                    '원룸',
                                    style: TextStyle(fontSize: 28)
                                ),
                                Text('전, 월세'),
                              ],
                            ),
                          ],
                        ),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SecondScreen())
                          );
                        },
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            onPrimary: Colors.black,
                            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Text(
                                    '오피스텔',
                                    style: TextStyle(fontSize: 28)
                                ),
                                Text('도시형생활주택\n전, 월세')
                              ],
                            ),
                          ],
                        ),
                        onPressed: (){},
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        )
      ),
    );
  }
}
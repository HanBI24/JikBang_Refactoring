import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: SafeArea(
          child: Scrollbar(
            isAlwaysShown: true,
            child: Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.topLeft,
                  height: 300,
                  color: Colors.orange,
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.arrow_back_ios),
                            Text('직방'),
                          ],
                        ),
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                            height: 130,
                            color: Colors.orange,
                          ),
                          Container(
                            alignment: Alignment.center,
                            margin: const EdgeInsets.all(8.0),
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  flex: 1,
                                  child: ConstrainedBox(
                                    constraints: BoxConstraints(minHeight: 80),
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.white,
                                        onPrimary: Colors.black,
                                      ),
                                      child: Column(
                                        children: <Widget>[
                                          Container(
                                            decoration: ShapeDecoration(
                                              color: Colors.orange,
                                              shape: CircleBorder(),
                                            ),
                                            child: Icon(Icons.location_on,
                                                color: Colors.white),
                                            padding: EdgeInsets.all(8.0),
                                          ),
                                          Text('지도로 방 찾기')
                                        ],
                                      ),
                                      onPressed: () {},
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: ConstrainedBox(
                                    constraints: BoxConstraints(minHeight: 80),
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.white,
                                        onPrimary: Colors.black,
                                      ),
                                      child: Column(
                                        children: <Widget>[
                                          Container(
                                            decoration: ShapeDecoration(
                                              color: Colors.orange,
                                              shape: CircleBorder(),
                                            ),
                                            child: Icon(Icons.directions_subway,
                                                color: Colors.white),
                                            padding: EdgeInsets.all(8.0),
                                          ),
                                          Text('지하철역으로 찾기')
                                        ],
                                      ),
                                      onPressed: () {},
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8.0),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(minHeight: 50),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          onPrimary: Colors.black
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.home_rounded),
                          Text('중개사무소에 집 내놓기'),
                        ],
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

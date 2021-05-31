import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:jikbang_refactoring/screen/seekbarlist/seekbar_screen1.dart';
import 'package:jikbang_refactoring/screen/seekbarlist/seekbar_screen2.dart';

class FilterList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: ListView(
        //mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.black)),
            ),
            child: Row(
              children: <Widget>[
                Text(
                  '\n   X   필터\n',
                  style: TextStyle(fontSize: 25),
                ),
                Text(
                  '                                 '
                  '                모두 초기화',
                  style: TextStyle(fontSize: 15),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 10, left: 10),
            /*decoration: BoxDecoration(
                 border: Border(bottom: BorderSide(color: Colors.white54)),
               ),*/
            child: Row(
              children: <Widget>[
                Text(
                  '거래유형',
                  style: TextStyle(fontSize: 25, color: Colors.orange),
                ),
              ],
            ),
          ),
          Column(
            children: <Widget>[
              GridView.count(
                crossAxisCount: 3,
                shrinkWrap: true,
                primary: false,
                childAspectRatio: 1.3,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(color: Colors.grey, width: 5)),
                    ),
                    padding: const EdgeInsets.symmetric(
                        vertical: 35.0, horizontal: 10.0),
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text('       전체', style: TextStyle(fontSize: 15)),
                            ],
                          ),
                        ],
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(color: Colors.grey, width: 5)),
                    ),
                    padding: const EdgeInsets.symmetric(
                        vertical: 35.0, horizontal: 10.0),
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                '       전세',
                                style: TextStyle(fontSize: 15),
                              ),
                            ],
                          ),
                        ],
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(color: Colors.grey, width: 5)),
                    ),
                    padding: const EdgeInsets.symmetric(
                        vertical: 35.0, horizontal: 10.0),
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                '       월세',
                                style: TextStyle(fontSize: 15),
                              ),
                            ],
                          ),
                        ],
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              SliderWidget1(),
              Container(
                decoration: BoxDecoration(
                  border:
                      Border(bottom: BorderSide(color: Colors.grey, width: 5)),
                ),
              ),
              SliderWidget2(),
              Container(
                decoration: BoxDecoration(
                  border:
                      Border(bottom: BorderSide(color: Colors.grey, width: 5)),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 0, left: 10),
                child: Row(
                  children: <Widget>[
                    Text(
                      '\n구조\n',
                      style: TextStyle(fontSize: 25, color: Colors.orange),
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
                    childAspectRatio: 6,
                    children: <Widget>[
                      Center(
                        child: OutlineButton(
                          child: Text(
                              "                    전체                    "),
                          onPressed: () {},
                        ),
                      ),
                      Center(
                        child: OutlineButton(
                          child: Text(
                              "               오픈형(방1)                    "),
                          onPressed: () {},
                        ),
                      ),
                      Center(
                        child: OutlineButton(
                          child: Text(
                              "           분리형(방1,거실1)                    "),
                          onPressed: () {},
                        ),
                      ),
                      Center(
                        child: OutlineButton(
                          child: Text(
                              "                    복층형                   "),
                          onPressed: () {},
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(color: Colors.grey, width: 5)),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(color: Colors.grey, width: 5)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.only(top: 0, left: 10),
                child: Row(
                  children: <Widget>[
                    Text(
                      '\n층 수 옵션\n',
                      style: TextStyle(fontSize: 25, color: Colors.orange),
                    ),
                  ],
                ),
              ),
              Column(
                children: <Widget>[
                  GridView.count(
                    crossAxisCount: 3,
                    shrinkWrap: true,
                    primary: false,
                    childAspectRatio: 3,
                    children: <Widget>[
                      Center(
                        child: OutlineButton(
                          child: Text("          전체          "),
                          onPressed: () {},
                        ),
                      ),
                      Center(
                        child: OutlineButton(
                          child: Text("        지상층        "),
                          onPressed: () {},
                        ),
                      ),
                      Center(
                        child: OutlineButton(
                          child: Text("    반지하,옥탑    "),
                          onPressed: () {},
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(color: Colors.grey, width: 5)),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(color: Colors.grey, width: 5)),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(color: Colors.grey, width: 5)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.only(top: 0, left: 10),
                child: Row(
                  children: <Widget>[
                    Text(
                      '\n추가 필터\n',
                      style: TextStyle(fontSize: 25, color: Colors.orange),
                    ),
                  ],
                ),
              ),
              Column(
                children: <Widget>[
                  GridView.count(
                    crossAxisCount: 4,
                    shrinkWrap: true,
                    primary: false,
                    childAspectRatio: 2,
                    children: <Widget>[
                      Center(
                        child: OutlineButton(
                          child: Text("주차공간"),
                          onPressed: () {},
                        ),
                      ),
                      Center(
                        child: OutlineButton(
                          child: Text("반려동물"),
                          onPressed: () {},
                        ),
                      ),
                      Center(
                        child: OutlineButton(
                          child: Text("보안시설"),
                          onPressed: () {},
                        ),
                      ),
                      Center(
                        child: OutlineButton(
                          child: Text("베란다"),
                          onPressed: () {},
                        ),
                      ),
                      Center(
                        child: OutlineButton(
                          child: Text("내부 vr"),
                          onPressed: () {},
                        ),
                      ),
                      Center(
                        child: OutlineButton(
                          child: Text("자금 대출"),
                          onPressed: () {},
                        ),
                      ),
                      Center(
                        child: OutlineButton(
                          child: Text("풀옵션"),
                          onPressed: () {},
                        ),
                      ),
                      Center(
                        child: OutlineButton(
                          child: Text("엘리베이터"),
                          onPressed: () {},
                        ),
                      ),
                      Center(
                        child: Text(""),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.orange, onPrimary: Colors.white),
                      onPressed: () {},
                      child: Text('검색하기'))),
            ],
          )
        ],
      )),
    );
  }
}

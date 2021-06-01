import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jikbang_refactoring/screen/filterlist/filterlist_screen.dart';
import 'package:jikbang_refactoring/screen/roomlist/room_list.dart';
import 'package:jikbang_refactoring/screen/searchhallym/search_screen.dart';

enum Trade { ALL, MONTH, CHARTER }

class FilterMyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: FilterMap(),
    );
  }
}

class FilterMap extends StatefulWidget {
  @override
  _FilterMap createState() => _FilterMap();
}

class _FilterMap extends State<FilterMap> {
  Trade _trade = Trade.ALL;

  @override
  Widget build(BuildContext context) {
    FocusScopeNode currentFocus = FocusScope.of(context);
    currentFocus.unfocus();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      darkTheme: ThemeData.dark(),
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.arrow_back_outlined),
                  Flexible(
                      child: Container(
                        width: 400,
                        height: 42,
                        padding: const EdgeInsets.only(left: 20.0, top: 10.0),
                        child: TextField(
                          textAlign: TextAlign.center,
                          textAlignVertical: TextAlignVertical.center,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              prefixIcon: Icon(Icons.search),
                              hintText: '지역, 지하철역, 학교 검색'),
                          onTap: () {
                            showSearch(context: context, delegate: DataSearch());
                          },
                        ),
                      )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Row(
                      children: <Widget>[
                        GestureDetector(
                          child: Container(
                            width: 60,
                            height: 32,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black)),
                            child: Row(
                              children: <Widget>[
                                Text('전체'),
                                Icon(Icons.keyboard_arrow_down)
                              ],
                            ),
                          ),
                          onTap: () {
                            showDialog(
                                context: context,
                                barrierDismissible: false,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text('거래 유형을 선택해 주세요.'),
                                    content: SingleChildScrollView(
                                      child: ListBody(
                                        children: <Widget>[
                                          RadioListTile(
                                              title: Text('전체'),
                                              value: Trade.ALL,
                                              groupValue: _trade,
                                              onChanged: (value) {
                                                setState(() {
                                                  _trade = value;
                                                });
                                              }),
                                          RadioListTile(
                                              title: Text('월세'),
                                              value: Trade.MONTH,
                                              groupValue: _trade,
                                              onChanged: (value) {
                                                setState(() {
                                                  _trade = value;
                                                });
                                              }),
                                          RadioListTile(
                                              title: Text('전세'),
                                              value: Trade.CHARTER,
                                              groupValue: _trade,
                                              onChanged: (value) {
                                                setState(() {
                                                  _trade = value;
                                                });
                                              }),
                                        ],
                                      ),
                                    ),
                                  );
                                });
                          },
                        ),
                        GestureDetector(
                          child: Row(
                            children: <Widget>[
                              Container(
                                width: 260,
                                height: 32,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                ),
                                child: Text('검색 조건을 설정해주세요.'),
                              ),
                              Container(
                                width: 62,
                                height: 32,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black)),
                                child: Row(
                                  children: <Widget>[
                                    Icon(Icons.filter_list_alt),
                                    Text('필터')
                                  ],
                                ),
                              ),
                            ],
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FilterList()));
                          },
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                  height: 520,
                  child: Stack(
                    children: <Widget>[
                      Image.asset('images/hallym.jpg', fit: BoxFit.contain),
                      Positioned(
                        width: 350,
                        top: 350,
                        child: FloatingActionButton(
                            child: Text(
                              '30',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            backgroundColor: Colors.orangeAccent,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => RoomList()));
                            }),
                      ),
                    ],
                  )),
              Container(
                  width: double.infinity,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.orange, onPrimary: Colors.white),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => RoomList()));
                      },
                      child: Text('이 지역  매물 보기'))),
            ],
          ),
        ),
      ),
    );
  }
}

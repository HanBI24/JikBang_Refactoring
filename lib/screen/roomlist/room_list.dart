import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jikbang_refactoring/model/room_item.dart';
import 'package:jikbang_refactoring/screen/filterlist/filterlist_screen.dart';
import 'package:jikbang_refactoring/screen/roomlist/roomlist_add.dart';

enum Trade { ALL, MONTH, CHARTER }

class RoomList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _RoomList();
}

class _RoomList extends State<RoomList> {
  List<RoomItem> roomList = List<RoomItem>.empty(growable: true);

  @override
  void initState() {
    super.initState();
    listAddItem();
    for (int i = 0; i < roomList.length; i++) {
      if (roomList[i].comment.length > 22) {
        roomList[i].comment = roomList[i].comment.substring(0, 22);
        roomList[i].comment += "...";
      }
    }
  }

  listAddItem() {
    RoomItem room1 = RoomListAdd().roomAdd1();
    RoomItem room2 = RoomListAdd().roomAdd2();
    RoomItem room3 = RoomListAdd().roomAdd3();
    RoomItem room4 = RoomListAdd().roomAdd4();
    RoomItem room5 = RoomListAdd().roomAdd5();
    roomList.add(room1);
    roomList.add(room2);
    roomList.add(room3);
    roomList.add(room4);
    roomList.add(room5);
  }

  @override
  Widget build(BuildContext context) {
    Trade _trade = Trade.ALL;

    return Scaffold(
        body: SafeArea(
      child: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: <Widget>[
                Icon(Icons.keyboard_backspace),
                Text(
                  '지역 목록 ${roomList.length}개',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  child: Container(
                    width: 60,
                    height: 32,
                    alignment: Alignment.center,
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.black)),
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
                        width: 250,
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FilterList()));
                  },
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: roomList.length,
                itemBuilder: (context, position) {
                  return GestureDetector(
                    child: Card(
                      child: Row(
                        children: <Widget>[
                          Image.asset(roomList[position].imgPath,
                              height: 100, width: 100, fit: BoxFit.contain),
                          Container(
                            padding: const EdgeInsets.fromLTRB(
                                30.0, 10.0, 10.0, 10.0),
                            alignment: Alignment.centerLeft,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Text(roomList[position].recommend),
                                Text(roomList[position].roomPrice),
                                Text(roomList[position].arch),
                                Text(roomList[position].location),
                                Text(roomList[position].comment)
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    ));
  }
}

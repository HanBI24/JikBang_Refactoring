import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jikbang_refactoring/model/room_item.dart';
import 'package:jikbang_refactoring/screen/filterlist/filterlist_screen.dart';
import 'file:///D:/univ_2021/HCI/HCI_final/proto/jikbang_refactoring/lib/model/roomitem_dummy.dart';
import 'package:speech_bubble/speech_bubble.dart';

enum Trade { ALL, MONTH, CHARTER }

class RoomList extends StatefulWidget {
  @override
  _RoomList createState() => _RoomList();
}

class _RoomList extends State<RoomList> {
  List<RoomItem> roomList = List<RoomItem>.empty(growable: true);
  bool isListTouched = false;

  @override
  void initState() {
    super.initState();
    _listAddItem();
    _addDotOverText();
  }

  _listAddItem() {
    RoomItem room0 = RoomListAdd().roomAdd0();
    RoomItem room1 = RoomListAdd().roomAdd1();
    RoomItem room2 = RoomListAdd().roomAdd2();
    RoomItem room3 = RoomListAdd().roomAdd3();
    RoomItem room4 = RoomListAdd().roomAdd4();
    roomList.add(room0);
    roomList.add(room1);
    roomList.add(room2);
    roomList.add(room3);
    roomList.add(room4);
  }

  _addDotOverText() {
    for (int i = 0; i < roomList.length; i++) {
      if (roomList[i].comment.length > 21) {
        roomList[i].comment = roomList[i].comment.substring(0, 21);
        roomList[i].comment += "...";
      }
    }
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
                  child: Column(
                    children: <Widget>[
                      Container(
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
                      SizedBox(
                        height: 37,
                      )
                    ],
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
                      Column(
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
                            child: AnimatedOpacity(
                              opacity: isListTouched ? 0.0 : 1.0,
                              duration: Duration(milliseconds: 500),
                              child: SpeechBubble(
                                  color: Colors.orange,
                                  nipLocation: NipLocation.BOTTOM,
                                  child: Text('길게 누르면 삭제할 수 있습니다.')),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: <Widget>[
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
                          SizedBox(
                            height: 37,
                          )
                        ],
                      )
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
              child: NotificationListener(
            child: ListView.builder(
                padding: const EdgeInsets.all(10.0),
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
                              child: Row(
                                children: <Widget>[
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: <Widget>[
                                        Text(roomList[position].recommend),
                                        Text(roomList[position].roomPrice),
                                        Text(roomList[position].arch),
                                        Text(roomList[position].location),
                                        Text(roomList[position].comment)
                                      ],
                                    ),
                                  ),
                                ],
                              ))
                        ],
                      ),
                    ),
                    onLongPress: () {
                      AlertDialog dialog = AlertDialog(
                        title: Text('삭제'),
                        content: Text(
                            '${roomList[position].roomPrice}\n${roomList[position].location}\n이 방을 삭제하시겠습니까?'),
                        actions: [
                          ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  roomList.removeAt(position);
                                });
                                Navigator.of(context).pop();
                              },
                              child: Text('예')),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text('아니요')),
                        ],
                      );
                      showDialog(
                          context: context,
                          builder: (BuildContext context) => dialog);
                    },
                  );
                }),
            onNotification: (notification) {
              if (notification is ScrollEndNotification) {
                setState(() {
                  isListTouched = !isListTouched;
                });
              }
              return true;
            },
          ))
        ],
      ),
    ));
  }
}

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jikbang_refactoring/model/room_item.dart';
import 'package:jikbang_refactoring/screen/accuracysearch/photo_screen.dart';
import 'package:jikbang_refactoring/screen/filterlist/filterlist_screen.dart';
import 'package:speech_bubble/speech_bubble.dart';
import 'package:jikbang_refactoring/model/roomitem_dummy.dart';

enum Trade { ALL, MONTH, CHARTER }

class RoomList extends StatefulWidget {
  @override
  _RoomList createState() => _RoomList();
}

class _RoomList extends State<RoomList> {
  List<RoomItem> roomList = List<RoomItem>.empty(growable: true);
  bool isListTouched = false;
  int _selectedIndex;
  _onSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    _listAddItem();
    _addDotOverText();
  }

  _listAddItem() {
    RoomListAdd roomListAdd = new RoomListAdd();

    RoomItem room0 = roomListAdd.roomAdd0();
    RoomItem room1 = roomListAdd.roomAdd1();
    RoomItem room2 = roomListAdd.roomAdd2();
    RoomItem room3 = roomListAdd.roomAdd3();
    RoomItem room4 = roomListAdd.roomAdd4();
    RoomItem room5 = roomListAdd.roomAdd5();
    RoomItem room6 = roomListAdd.roomAdd6();
    RoomItem room7 = roomListAdd.roomAdd7();
    RoomItem room8 = roomListAdd.roomAdd8();

    roomList.add(room0);
    roomList.add(room1);
    roomList.add(room2);
    roomList.add(room3);
    roomList.add(room4);
    roomList.add(room5);
    roomList.add(room6);
    roomList.add(room7);
    roomList.add(room8);
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

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      darkTheme: ThemeData.dark(),
      home: Scaffold(
          body: SafeArea(
            child: Column(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.keyboard_backspace),
                      Text(
                        '?????? ?????? ${roomList.length}???',
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
                                  Text('??????'),
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
                                  title: Text('?????? ????????? ????????? ?????????.'),
                                  content: SingleChildScrollView(
                                    child: ListBody(
                                      children: <Widget>[
                                        RadioListTile(
                                            title: Text('??????'),
                                            value: Trade.ALL,
                                            groupValue: _trade,
                                            onChanged: (value) {
                                              setState(() {
                                                _trade = value;
                                              });
                                            }),
                                        RadioListTile(
                                            title: Text('??????'),
                                            value: Trade.MONTH,
                                            groupValue: _trade,
                                            onChanged: (value) {
                                              setState(() {
                                                _trade = value;
                                              });
                                            }),
                                        RadioListTile(
                                            title: Text('??????'),
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
                                  child: Text('?????? ????????? ??????????????????.'),
                                ),
                                Container(
                                  child: AnimatedOpacity(
                                    opacity: isListTouched ? 0.0 : 1.0,
                                    duration: Duration(milliseconds: 500),
                                    child: SpeechBubble(
                                        color: Colors.orange,
                                        nipLocation: NipLocation.BOTTOM,
                                        child: Text('?????? ????????? ????????? ??? ????????????.')),
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
                                      Text('??????')
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
                                            Stack(
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
                                                Positioned(
                                                  width: 400,
                                                  top: 20,
                                                  child: IconButton(
                                                      icon: Icon(Icons.favorite,
                                                          color: _selectedIndex !=
                                                              null &&
                                                              _selectedIndex ==
                                                                  position
                                                              ? Colors.redAccent
                                                              : Colors.black12),
                                                      onPressed: () {
                                                        _onSelected(position);
                                                      }),
                                                )
                                              ],
                                            )
                                          ],
                                        ))
                                  ],
                                ),
                              ),
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => RoomPhoto()));
                              },
                              onLongPress: () {
                                AlertDialog dialog = AlertDialog(
                                  title: Text('??????'),
                                  content: Text(
                                      '${roomList[position].roomPrice}\n${roomList[position].location}\n??? ?????? ?????????????????????????'),
                                  actions: [
                                    ElevatedButton(
                                        onPressed: () {
                                          setState(() {
                                            roomList.removeAt(position);
                                          });
                                          Navigator.of(context, rootNavigator: true)
                                              .pop('dialog');
                                        },
                                        child: Text('???')),
                                    ElevatedButton(
                                        onPressed: () {
                                          Navigator.of(context, rootNavigator: true)
                                              .pop('dialog');
                                        },
                                        child: Text('?????????')),
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
          )),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jikbang_refactoring/model/room_item.dart';
import 'package:jikbang_refactoring/model/roomitem_dummy.dart';
import 'package:jikbang_refactoring/screen/accuracysearch/photo_screen.dart';
import 'package:jikbang_refactoring/screen/filtermap/filtermap_screen.dart';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreen createState() => _SecondScreen();

}
class _SecondScreen extends State<SecondScreen> {
  List<RoomItem> roomList = List<RoomItem>.empty(growable: true);
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
    RoomItem room3 = roomListAdd.roomAdd3();
    RoomItem room5 = roomListAdd.roomAdd5();
    RoomItem room7 = roomListAdd.roomAdd7();
    RoomItem room8 = roomListAdd.roomAdd8();

    roomList.add(room0);
    roomList.add(room3);
    roomList.add(room5);
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      darkTheme: ThemeData.dark(),
      home: Container(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: SafeArea(
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
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    FilterMap()));
                                      },
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
                          primary: Colors.white, onPrimary: Colors.black),
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
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: <Widget>[
                      Text('찜 목록', style: TextStyle(fontSize: 23),),
                    ],
                  ),
                ),
                Expanded(
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
                                                          ? Colors.black12
                                                          : Colors.redAccent),
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
                              title: Text('삭제'),
                              content: Text(
                                  '${roomList[position].roomPrice}\n${roomList[position].location}\n이 방을 삭제하시겠습니까?'),
                              actions: [
                                ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        roomList.removeAt(position);
                                      });
                                      Navigator.of(context, rootNavigator: true)
                                          .pop('dialog');
                                    },
                                    child: Text('예')),
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.of(context, rootNavigator: true)
                                          .pop('dialog');
                                    },
                                    child: Text('아니요')),
                              ],
                            );
                            showDialog(
                                context: context,
                                builder: (BuildContext context) => dialog);
                          },
                        );
                      }
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

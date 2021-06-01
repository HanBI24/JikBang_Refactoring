import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jikbang_refactoring/screen/accuracysearch/accuracysearch_screen.dart';


class RoomPhotoMyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      darkTheme: ThemeData.dark(),
      home: RoomPhoto(),
    );
  }
}

class RoomPhoto extends StatefulWidget {
  @override
  _RoomPhoto createState() => _RoomPhoto();
}

class _RoomPhoto extends State<RoomPhoto> {

  @override
  Widget build(BuildContext context) {
    FocusScopeNode currentFocus = FocusScope.of(context);
    currentFocus.unfocus();

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Text('\n ←   춘천시 후평동                          ♡        \n',style: TextStyle(fontSize: 25),),
              Container(
                  width: 400,
                  height: 300,
                  child: Image.asset('images/room_0.jpg',fit: BoxFit.fitWidth,)
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    Text('  거래가 가능한 집이에요.',style: TextStyle(fontSize: 18),),
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    Text(' 월세 300/37',style: TextStyle(fontSize: 30),),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey)),
                ),
                child: Row(
                  children: <Widget>[
                    Text('  등록번호 27445864\n',style: TextStyle(fontSize: 15),),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey)),
                ),
                child: Row(
                  children: <Widget>[
                    Text(' 위치',style: TextStyle(fontSize: 25),),
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    Text('춘천시 후평동',style: TextStyle(fontSize: 15),),
                  ],
                ),
              ),
              Container(
                  width: 400,
                  height: 150,
                  child: Image.asset('images/location.PNG',fit: BoxFit.fitWidth,)
              ),
              Container(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.orange, onPrimary: Colors.white),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AccuracySearch()));
                      },
                      child: Text('위치 보기')))
            ],
          ),
        ),
      )
    );
  }
}

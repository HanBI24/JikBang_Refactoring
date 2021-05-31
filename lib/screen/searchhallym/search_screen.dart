import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:flutter/cupertino.dart';
import 'package:jikbang_refactoring/screen/roomlist/room_list.dart';
=======
import 'package:jikbang_refactoring/screen/roomlist/room_list.dart';
import 'package:jikbang_refactoring/screen/second/second_screen.dart';
>>>>>>> 92188e90bb49e8a5bb8d7604cddd83934fe566b2

class SearchHallym extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("지역, 지하철역, 학교 검색"),
        actions: <Widget>[
<<<<<<< HEAD
          IconButton(icon: Icon(Icons.search) ,onPressed: (){
            showSearch(context: context, delegate: DataSearch());
          }),
=======
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                showSearch(context: context, delegate: DataSearch());
              })
>>>>>>> 92188e90bb49e8a5bb8d7604cddd83934fe566b2
        ],
      ),
      //drawer: Drawer(),
    );
  }
}

class DataSearch extends SearchDelegate<String> {
  final cities = ["한림대", "한림대학교", "한림성심대", "제주도 한림면", "한림고등학교"];

  final recentCities = [
    "강릉시",
    "건국대",
    "한림대학교 공학관",
    "일송아트홀",
    "한림대학교 clc",
    "강원도 춘천시",
    "춘천시 교동",
    "춘천역"
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = "";
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
        ),
        onPressed: () {
          close(context, null);
        });
  }

  @override
<<<<<<< HEAD
  Widget buildResults(BuildContext context) {
    return Image.asset('images/hallym.jpg');
  }
=======
  Widget buildResults(BuildContext context) {}
>>>>>>> 92188e90bb49e8a5bb8d7604cddd83934fe566b2

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
        ? recentCities
        : cities.where((p) => p.startsWith(query)).toList();

    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        onTap: () {
          // showResults(context);
          // 검색 결과 리스트로 이동.
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => RoomList())
          );
        },
        leading: Icon(Icons.location_city),
        title: RichText(
          text: TextSpan(
              text: suggestionList[index].substring(0, query.length),
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              children: [
                TextSpan(
                    text: suggestionList[index].substring(query.length),
                    style: TextStyle(color: Colors.grey))
              ]),
        ),
      ),
      itemCount: suggestionList.length,
    );
  }
}

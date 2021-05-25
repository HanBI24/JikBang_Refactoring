import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        height: 50,
        child: TabBar(
          tabs: <Widget>[
            Tab(
              icon: Icon(
                Icons.home_work_sharp,
                size: 18
              ),
              child: Text(
                '부동산',
                style: TextStyle(fontSize: 9),
              ),
            ),
            Tab(
              icon: Icon(
                  Icons.home,
                  size: 18
              ),
              child: Text(
                '우리집',
                style: TextStyle(fontSize: 9),
              ),
            ),
            Tab(
              icon: Icon(
                  Icons.wifi_tethering,
                  size: 18
              ),
              child: Text(
                '컨시어지',
                style: TextStyle(fontSize: 9),
              ),
            ),
          ],
        ),
      ),
    );
  }

}
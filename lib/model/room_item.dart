import 'package:flutter/material.dart';

class RoomItem {
  int position;
  String imgPath;
  String recommend;
  String roomPrice;
  String arch;
  String location;
  String comment;

  RoomItem({
    @required this.position,
    @required this.imgPath,
    @required this.recommend,
    @required this.roomPrice,
    @required this.arch,
    @required this.location,
    @required this.comment
  });
}

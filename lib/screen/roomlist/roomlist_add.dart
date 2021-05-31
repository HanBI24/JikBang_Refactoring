import 'package:jikbang_refactoring/model/room_item.dart';

class RoomListAdd {
  roomAdd1() {
    RoomItem roomItem = RoomItem(
        imgPath: 'images/room_1.jpg',
        recommend: '추천 : 원룸, 분리형/원룸',
        roomPrice: '월세 300/37',
        arch: '7평, 3층',
        location: '춘천시 후평동',
        comment:'봉의중 부근, 방 컨디션 너무 좋고 깔끔한 신축 원룸');

    return roomItem;
    }

  roomAdd2() {
    RoomItem roomItem = RoomItem(
        imgPath: 'images/room_2.jpg',
        recommend: '추천 : 원룸, 오픈형/원룸',
        roomPrice: '월세 300/36',
        arch: '10평, 2층',
        location: '춘천시 후평동',
        comment:'한림대병원 인근 거실 있는 AAA급 1.5룸');

    return roomItem;
  }

  roomAdd3() {
    RoomItem roomItem = RoomItem(
        imgPath: 'images/room_3.jpg',
        recommend: '추천 : 원룸, 오픈형/원룸',
        roomPrice: '월세 300/37',
        arch: '10평, 3층',
        location: '춘천시 효자동',
        comment:'강원대병원, 강대후문, 팔호광장, 1.5룸');

    return roomItem;
  }

  roomAdd4() {
    RoomItem roomItem = RoomItem(
        imgPath: 'images/room_4.jpg',
        recommend: '추천 : 원룸, 분리형/원룸',
        roomPrice: '월세 300/47',
        arch: '11평, 3층',
        location: '춘천시 교동',
        comment:'교동 한림대 부근 도보5분. 1년 안된 신축 넓은 1.5룸');

    return roomItem;
  }

  roomAdd5() {
    RoomItem roomItem = RoomItem(
        imgPath: 'images/room_5.jpg',
        recommend: '추천 : 원룸, 분리형/원룸',
        roomPrice: '월세 300/39',
        arch: '14평, 3층',
        location: '춘천시 교동',
        comment:'신축 초대형 1.5룸. 두 명 사용 가능');

    return roomItem;
  }
}
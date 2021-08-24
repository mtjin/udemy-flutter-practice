import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lime,
        body: SafeArea(
          child: Container(
            margin: EdgeInsets.fromLTRB(100.0, 60.0, 10.0, 20.0), // left, top, right, bottom 각각 마진설정
            //margin : EdgeInsets.all(30.0) // 전체 한번에 마진설정
            //margin: EdgeInsets.symmetric(vertical: 30.0, horizontal: 50.0), // 수직, 수평 마진 설정
            //margin: EdgeInsets.only(left: 30.0), // 한 방향만 마진 설정
            padding: EdgeInsets.all(10.0),
            height: 100.0,
            width: 100.0,
            color: Colors.white,
            child: Text("안녕하세요"),
          ),
        ),
      ),
    );
  }
}

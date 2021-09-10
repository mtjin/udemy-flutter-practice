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
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // 컨테이너를 끝에서부터 동등하게 간격조절하여 가운데 정렬
            children: [
              Container(
                //height 는 match parent 자동으로 되게 설정 따로 안해줘도됨
                width: 100.0,
                color: Colors.red,
              ),
              Container( // 반반 나눠서 색 2개 만듬, 근데 더 좋은 방법있을거같은데 흠..
                  width: 100.0,
                  height: 200.0,
                  color: Colors.yellow,
                  padding: EdgeInsets.fromLTRB(0.0, 100.0, 0.0, 0.0),
                  child: Container(color: Colors.green)),
              Container(width: 100.0, color: Colors.blue),
            ],
          ),
        ),
      ),
    );
  }
}

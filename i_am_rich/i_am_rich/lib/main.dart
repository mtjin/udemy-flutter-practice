import 'package:flutter/material.dart';


// main() 은 모든 플러터앱의 시작점이다.
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text("I Am Rich"),
        backgroundColor: Colors.blueGrey[900],
      ),
      body: Center(
        child: Image( // AssetImage 는 프로젝트 내부 이미지 파일을 불러올 수 있습니다.
          image: AssetImage('images/diamond.png'),
        ),
      ),
    )
  ));
}

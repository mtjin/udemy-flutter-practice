import 'dart:math'; // Math 라이브러리 추가
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 5;
  int rightDiceNumber = 5;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: FlatButton(
              // FlatButton은 기본적으로 16 패딩을 갖음
              onPressed: () {
                setState(() {
                  leftDiceNumber = Random().nextInt(6) + 1; // 숫자 랜덤
                }); // setState() 메소드를 build() 함수를 다시 호출하게 해줌
              }, // 클릭이벤트(void callback 구조)
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ), // image.asset 로 코드 간결화
          Expanded(
            flex: 1,
            child: FlatButton(
                onPressed: () {
                  setState(() {
                    rightDiceNumber = Random().nextInt(6) + 1; // 숫자 랜덤
                  });
                }, //
                child: Image.asset('images/dice$rightDiceNumber.png')),
          )
        ],
      ),
    );
  }
}

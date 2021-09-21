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
                  leftDiceNumber = 3;
                }); // setState() 메소드를 build() 함수를 다시 호출하게 해줌
              }, // 클릭이벤트(void callback 구조)
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ), // image.asset 로 코드 간결화
          Expanded(
            flex: 1,
            child: FlatButton(
                onPressed: () {
                  print('오른쪽 주사위 onPressed!!!');
                }, //
                child: Image.asset('images/dice1.png')),
          )
        ],
      ),
    );
  }
}

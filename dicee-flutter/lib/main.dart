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

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var leftDiceNumber = 5;

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: FlatButton(
              // FlatButton은 기본적으로 16 패딩을 갖음
              onPressed: () {
                print('왼쪽 주사위 onPressed!!!');
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

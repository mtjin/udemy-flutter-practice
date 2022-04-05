import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  // @required로 색상값 매개변수 필요하다고 알려줌 (린트로 잡힘)
  ReusableCard({@required this.colour, this.cardChild, this.onPress});

  final Color colour;
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
      return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            // 생성자로 받은 컬러 사용
            color: colour,
            borderRadius: BorderRadius.circular(10.0)),
      ),
    );
  }
}

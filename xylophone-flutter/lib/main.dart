import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  // 매개변수명으로 인자를 넘길때는 {} 로 매개변수를 감싸줘야함
  // Arrow Function 적용
  Expanded buildKey({Color color, int soundNumber}) => Expanded(
        child: FlatButton(
          color: color,
          onPressed: () {
            playSound(soundNumber);
          },
        ),
      );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, soundNumber: 1),
              buildKey(color: Colors.purple, soundNumber: 1),
              buildKey(color: Colors.yellow, soundNumber: 1),
              buildKey(color: Colors.green, soundNumber: 1),
              buildKey(color: Colors.teal, soundNumber: 1),
              buildKey(color: Colors.blue, soundNumber: 1),
              buildKey(color: Colors.purple, soundNumber: 1),
            ],
          ),
        ),
      ),
    );
  }
}

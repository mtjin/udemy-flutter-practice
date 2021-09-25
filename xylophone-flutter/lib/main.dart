import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: FlatButton(
              onPressed: () {
                final player = AudioCache();
                player.play('note1.wav');
              },
              child: Text('Click Me'),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: null,
      ),
    );

class BallPage extends StatelessWidget {
  const BallPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('나에게 무엇이든 물어봐요'),
        backgroundColor: Colors.blue[900],
      ),
    );
  }
}

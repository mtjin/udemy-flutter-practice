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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                  height: 100.0,
                  color: Colors.white,
                  child: Text("컨테이너 1")
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 100.0,
                color: Colors.blue,
                child: Text("컨테이너 2"),
              ),
              Container(
                  height: 100.0,
                  color: Colors.orange,
                  child: Text("컨테이너 3")
              ),
            ],
          ),
        ),
      ),
    );
  }
}
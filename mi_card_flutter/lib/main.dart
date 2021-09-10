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
            child: Column(
          children: <Widget>[
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('images/profile.jpg'),
            ),
            Text(
              "JackJackE",
              style: TextStyle(
                  fontFamily: 'Pacifico', // pubspec.yaml 에 폰트이름 설정해논거 세팅
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Flutter Developer",
              style: TextStyle(
                fontFamily: 'Source Sans Pro', // pubspec.yaml 에 폰트이름 설정해논거 세팅
                fontSize: 40.0,
                color: Colors.teal.shade100,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold
              ),
            )
          ],
        )),
      ),
    );
  }
}

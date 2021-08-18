import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        title: Text('I am poor :('),
        backgroundColor: Colors.tealAccent,
      ),
      body: Center(
        child: Image(
          image: AssetImage('images/pale-bank-1.png'),
        ),
      ),
    ),
  ));
}

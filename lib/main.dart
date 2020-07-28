import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: magicBallApp(),
      ),
    );

class magicBallApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Center(
            child: Text(
          'Ask Me Anything',
          style: TextStyle(color: Colors.black),
        )),
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int answereNO = 1;
  void answereBall() {
    setState(() {
      answereNO = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: FlatButton(
      onPressed: () {
        answereBall();
      },
      child: Image.asset('images/ball$answereNO.png'),
    ));
  }
}

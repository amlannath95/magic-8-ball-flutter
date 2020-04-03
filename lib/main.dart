import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(home: BallPage()),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Text(
          'Ask Me Anything',
        ),
        centerTitle: true,
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
  var ballNumber = Random().nextInt(5) + 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          setState(() {
            ballNumber = Random().nextInt(5) + 1;
          });
        },
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent, // highlight color and splash color
        // hides the dark background that appears that appear every time we click
        child: Image.asset('images/ball$ballNumber.png'),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class GameScreen extends StatefulWidget {
  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.orange,
        height: double.maxFinite,
        width: double.maxFinite,
        child: Center(
          child: Text('Game Screen'),
        ),
      ),
    );
  }
}

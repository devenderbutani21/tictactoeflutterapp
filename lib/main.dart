import 'package:flutter/material.dart';
import 'package:tictactoeflutterapp/screens/game_screen.dart';
import 'package:tictactoeflutterapp/screens/choose_screen.dart';
import 'package:tictactoeflutterapp/screens/starting_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TicTacToe',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/' : (context) => StartingScreen(),
        '/game': (context) => GameScreen(),
        '/choose': (context) => ChooseScreen(),
      },
    );
  }
}


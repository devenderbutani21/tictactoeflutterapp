import 'package:flutter/material.dart';
import './screens/route_generator.dart';
// import './screens/game_screen.dart';
// import './screens/choose_screen.dart';
// import './screens/starting_screen.dart';

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
        primarySwatch: Colors.orange,
      ),
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
      // Old Method of Routing
      // routes: {
      //   '/' : (context) => StartingScreen(),
      //   '/choose': (context) => ChooseScreen(),
      //   '/game': (context) => GameScreen(ModalRoute.of(context).settings.arguments),
      // },
    );
  }
}


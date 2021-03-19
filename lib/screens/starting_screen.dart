import 'package:flutter/material.dart';

class StartingScreen extends StatefulWidget {
  @override
  _StartingScreenState createState() => _StartingScreenState();
}

class _StartingScreenState extends State<StartingScreen> {
  final Shader linearGradient = LinearGradient(
    colors: <Color>[
      Colors.orange,
      Colors.deepOrange,
    ],
  ).createShader(
    Rect.fromLTWH(
      0.0,
      0.0,
      200.0,
      70.0,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        color: Colors.black,
        child: Column(
          children: [
            SizedBox(
              height: 240,
            ),
            Container(
              child: Text(
                'TicTacToe',
                style: TextStyle(
                  fontSize: 54,
                  fontWeight: FontWeight.bold,
                  foreground: Paint()..shader = linearGradient,
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/choose');
              },
              child: Container(
                height: 40,
                width: 160,
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(32.0),
                ),
                child: Center(
                  child: Text(
                    'Play',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            // SizedBox(
            //   height: 40,
            // ),
            // InkWell(
            //   onTap: () {
            //     Navigator.pushNamed(context, '/score');
            //   },
            //   child: Container(
            //     height: 40,
            //     width: 160,
            //     decoration: BoxDecoration(
            //       color: Colors.deepOrange,
            //       borderRadius: BorderRadius.circular(32.0),
            //     ),
            //     child: Center(
            //       child: Text(
            //         'Score',
            //         style: TextStyle(
            //           fontSize: 28,
            //           fontWeight: FontWeight.bold,
            //           color: Colors.white,
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

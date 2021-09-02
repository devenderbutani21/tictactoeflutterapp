import 'package:flutter/material.dart';

class StartingScreen extends StatefulWidget {
  @override
  _StartingScreenState createState() => _StartingScreenState();
}

class _StartingScreenState extends State<StartingScreen> {
  // Colors for text
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
                  fontSize: 64,
                  fontWeight: FontWeight.bold,
                  foreground: Paint()..shader = linearGradient,
                ),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            // Button to navigate
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/choose');
              },
              child: Container(
                height: 48,
                width: 180,
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
            SizedBox(
              height: 180,
            ),
            Container(
              child: Text(
                'Developed by Devender Butani',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

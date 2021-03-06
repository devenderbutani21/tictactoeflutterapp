import 'package:flutter/material.dart';

class ChooseScreen extends StatefulWidget {
  @override
  _ChooseScreenState createState() => _ChooseScreenState();
}

class _ChooseScreenState extends State<ChooseScreen> {
  // Inorder to make player choose X or O
  bool xOrO = true;

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

  // Color for X
  final Shader linearGradient2 = LinearGradient(
    colors: <Color>[
      Colors.blue,
      Colors.lightBlue,
    ],
  ).createShader(
    Rect.fromLTWH(
      0.0,
      0.0,
      200.0,
      70.0,
    ),
  );

  // Color for O
  final Shader linearGradient3 = LinearGradient(
    colors: <Color>[
      Colors.teal,
      Colors.tealAccent,
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
        color: Colors.black,
        height: double.maxFinite,
        width: double.maxFinite,
        child: Column(
          children: [
            SizedBox(
              height: 160,
            ),
            Center(
              child: Text(
                'Choose your side',
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  foreground: Paint()..shader = linearGradient,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 80,
                ),
                Text(
                  'X',
                  style: TextStyle(
                    fontSize: 120,
                    fontWeight: FontWeight.bold,
                    foreground: Paint()..shader = linearGradient2,
                  ),
                ),
                SizedBox(
                  width: 100,
                ),
                Text(
                  'O',
                  style: TextStyle(
                    fontSize: 120,
                    fontWeight: FontWeight.bold,
                    foreground: Paint()..shader = linearGradient3,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Theme(
              data: ThemeData(
                unselectedWidgetColor: Colors.white,
                primarySwatch: Colors.orange,
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 90,
                  ),
                  Radio(
                    value: true,
                    groupValue: xOrO,
                    onChanged: (T) {
                      setState(() {
                        xOrO = T;
                      });
                    },
                  ),
                  SizedBox(
                    width: 140,
                  ),
                  Radio(
                    value: false,
                    groupValue: xOrO,
                    onChanged: (T) {
                      setState(() {
                        xOrO = T;
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 60,
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/game', arguments: xOrO);
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
                    'Start',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

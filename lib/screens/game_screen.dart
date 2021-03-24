import 'package:flutter/material.dart';

class GameScreen extends StatefulWidget {
  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  List<bool> tictactoe = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];

  int i = 0;

  Widget xoDisplay(bool tic) {
    return tic
        ? (i % 2 == 0
            ? Center(
                child: Text(
                  'X',
                  style: TextStyle(fontSize: 108, color: Colors.black),
                ),
              )
            : Center(
                child: Text(
                  'O',
                  style: TextStyle(fontSize: 108, color: Colors.black),
                ),
              ))
        : Center(
            child: Text(''),
          );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          Row(
            children: [
              SizedBox(
                width: 30,
              ),
              InkWell(
                onTap: () {
                  tictactoe[0] = true;
                  setState(() {
                    i++;
                  });
                },
                child: Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: xoDisplay(tictactoe[0])),
              ),
              InkWell(
                onTap: () {
                  tictactoe[1] = true;
                  setState(() {
                    i++;
                  });
                },
                child: Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: xoDisplay(tictactoe[1])),
              ),
              InkWell(
                onTap: () {
                  tictactoe[2] = true;
                  setState(() {
                    i++;
                  });
                },
                child: Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      width: 1,
                    ),
                  ),
                  child: xoDisplay(tictactoe[2]),
                ),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 30,
              ),
              InkWell(
                onTap: () {
                  tictactoe[3] = true;
                  setState(() {
                    i++;
                  });
                },
                child: Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      width: 1,
                    ),
                  ),
                  child: xoDisplay(tictactoe[3]),
                ),
              ),
              InkWell(
                onTap: () {
                  tictactoe[4] = true;
                  setState(() {
                    i++;
                  });
                },
                child: Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      width: 1,
                    ),
                  ),
                  child: xoDisplay(tictactoe[4]),
                ),
              ),
              InkWell(
                onTap: () {
                  tictactoe[5] = true;
                  setState(() {
                    i++;
                  });
                },
                child: Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      width: 1,
                    ),
                  ),
                  child: xoDisplay(tictactoe[5]),
                ),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 30,
              ),
              InkWell(
                onTap: () {
                  tictactoe[6] = true;
                  setState(() {
                    i++;
                  });
                },
                child: Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      width: 1,
                    ),
                  ),
                  child: xoDisplay(tictactoe[6]),
                ),
              ),
              InkWell(
                onTap: () {
                  tictactoe[7] = true;
                  setState(() {
                    i++;
                  });
                },
                child: Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      width: 1,
                    ),
                  ),
                  child: xoDisplay(tictactoe[7]),
                ),
              ),
              InkWell(
                onTap: () {
                  tictactoe[8] = true;
                  setState(() {
                    i++;
                  });
                },
                child: Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      width: 1,
                    ),
                  ),
                  child: xoDisplay(tictactoe[8]),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

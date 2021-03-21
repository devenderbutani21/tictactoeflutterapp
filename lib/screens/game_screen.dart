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
                  setState(() {});
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
                  child: tictactoe[0]
                      ? Center(
                          child: Text(
                            'X',
                            style:
                                TextStyle(fontSize: 108, color: Colors.black),
                          ),
                        )
                      : Center(
                          child: Text(''),
                        ),
                ),
              ),
              InkWell(
                onTap: () {
                  tictactoe[1] = true;
                  setState(() {});
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
                  child: tictactoe[1]
                      ? Center(
                          child: Text(
                            'X',
                            style:
                                TextStyle(fontSize: 108, color: Colors.black),
                          ),
                        )
                      : Center(
                          child: Text(''),
                        ),
                ),
              ),
              InkWell(
                onTap: () {
                  tictactoe[2] = true;
                  setState(() {});
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
                  child: tictactoe[2]
                      ? Center(
                          child: Text(
                            'X',
                            style:
                                TextStyle(fontSize: 108, color: Colors.black),
                          ),
                        )
                      : Center(
                          child: Text(''),
                        ),
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
                  setState(() {});
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
                  child: tictactoe[3]
                      ? Center(
                          child: Text(
                            'X',
                            style:
                                TextStyle(fontSize: 108, color: Colors.black),
                          ),
                        )
                      : Center(
                          child: Text(''),
                        ),
                ),
              ),
              InkWell(
                onTap: () {
                  tictactoe[4] = true;
                  setState(() {});
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
                  child: tictactoe[4]
                      ? Center(
                          child: Text(
                            'X',
                            style:
                                TextStyle(fontSize: 108, color: Colors.black),
                          ),
                        )
                      : Center(
                          child: Text(''),
                        ),
                ),
              ),
              InkWell(
                onTap: () {
                  tictactoe[5] = true;
                  setState(() {});
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
                  child: tictactoe[5]
                      ? Center(
                          child: Text(
                            'X',
                            style:
                                TextStyle(fontSize: 108, color: Colors.black),
                          ),
                        )
                      : Center(
                          child: Text(''),
                        ),
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
                  setState(() {});
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
                  child: tictactoe[6]
                      ? Center(
                          child: Text(
                            'X',
                            style:
                                TextStyle(fontSize: 108, color: Colors.black),
                          ),
                        )
                      : Center(
                          child: Text(''),
                        ),
                ),
              ),
              InkWell(
                onTap: () {
                  tictactoe[7] = true;
                  setState(() {});
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
                  child: tictactoe[7]
                      ? Center(
                          child: Text(
                            'X',
                            style:
                                TextStyle(fontSize: 108, color: Colors.black),
                          ),
                        )
                      : Center(
                          child: Text(''),
                        ),
                ),
              ),
              InkWell(
                onTap: () {
                  tictactoe[8] = true;
                  setState(() {});
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
                  child: tictactoe[8]
                      ? Center(
                          child: Text(
                            'X',
                            style:
                                TextStyle(fontSize: 108, color: Colors.black),
                          ),
                        )
                      : Center(
                          child: Text(''),
                        ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

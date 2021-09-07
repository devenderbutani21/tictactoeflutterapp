import 'package:flutter/material.dart';

class GameScreen extends StatefulWidget {
  final bool xOrO;

  GameScreen(this.xOrO);

  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  int i;

  @override
  void initState() {
    if (widget.xOrO == true) {
      i = 0;
    } else {
      i = 1;
    }
    super.initState();
  }

  // Color for X
  final Shader linearGradient1 = LinearGradient(
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
  final Shader linearGradient2 = LinearGradient(
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

  LinearGradient gradientGrid = LinearGradient(
    colors: <Color>[
      Colors.orange,
      Colors.orangeAccent,
    ],
  );

  // Check whether it is the square is filled or not
  List<bool> ticTacToe = [
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

  // Board Setup is empty
  List<String> type = [
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
  ];

  // divisible to 2 then insert X and if not then O

  // Check whether player has won or not
  checker() {
    if ((type[0] == 'o' && type[1] == 'o' && type[2] == 'o') ||
        (type[3] == 'o' && type[4] == 'o' && type[5] == 'o') ||
        (type[6] == 'o' && type[7] == 'o' && type[8] == 'o') ||
        (type[0] == 'o' && type[3] == 'o' && type[6] == 'o') ||
        (type[1] == 'o' && type[4] == 'o' && type[7] == 'o') ||
        (type[2] == 'o' && type[5] == 'o' && type[8] == 'o') ||
        (type[0] == 'o' && type[4] == 'o' && type[8] == 'o') ||
        (type[2] == 'o' && type[4] == 'o' && type[6] == 'o')) {
      return 1;
    } else if ((type[0] == 'x' && type[1] == 'x' && type[2] == 'x') ||
        (type[3] == 'x' && type[4] == 'x' && type[5] == 'x') ||
        (type[6] == 'x' && type[7] == 'x' && type[8] == 'x') ||
        (type[0] == 'x' && type[3] == 'x' && type[6] == 'x') ||
        (type[1] == 'x' && type[4] == 'x' && type[7] == 'x') ||
        (type[2] == 'x' && type[5] == 'x' && type[8] == 'x') ||
        (type[0] == 'x' && type[4] == 'x' && type[8] == 'x') ||
        (type[2] == 'x' && type[4] == 'x' && type[6] == 'x')) {
      return 2;
    } else {
      return 0;
    }
  }

  Widget xoDisplay(String s) {
    if (s == "x") {
      return Center(
        child: Text(
          'X',
          style: TextStyle(
            fontSize: 108,
            foreground: Paint()..shader = linearGradient1,
          ),
        ),
      );
    } else if (s == "o") {
      return Center(
        child: Text(
          'O',
          style: TextStyle(
            fontSize: 108,
            foreground: Paint()..shader = linearGradient2,
          ),
        ),
      );
    } else {
      return Center(
        child: Text(''),
      );
    }
  }

  checkLock(bool lock) {
    if (lock == false) {
      lock = true;
      if (i % 2 == 0) {
        xoDisplay('x');
      } else {
        xoDisplay('o');
      }
    } else {
      xoDisplay('');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                SizedBox(
                  height: 80,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    InkWell(
                      onTap: () {
                        if (ticTacToe[0] == false) {
                          if (i % 2 == 0) {
                            type[0] = 'x';
                          } else {
                            type[0] = 'o';
                          }
                        }
                        ticTacToe[0] = true;
                        setState(() {
                          i++;
                          checker();
                        });
                      },
                      child: Container(
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            border: Border.all(
                              width: 1,
                              color: Colors.orange,
                            ),
                          ),
                          child: xoDisplay(type[0])),
                    ),
                    InkWell(
                      onTap: () {
                        if (ticTacToe[1] == false) {
                          if (i % 2 == 0) {
                            type[1] = 'x';
                          } else {
                            type[1] = 'o';
                          }
                        }
                        ticTacToe[1] = true;
                        setState(() {
                          i++;
                          checker();
                        });
                      },
                      child: Container(
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            border: Border.all(
                              width: 1,
                              color: Colors.orange,
                            ),
                          ),
                          child: xoDisplay(type[1])),
                    ),
                    InkWell(
                      onTap: () {
                        if (ticTacToe[2] == false) {
                          if (i % 2 == 0) {
                            type[2] = 'x';
                          } else {
                            type[2] = 'o';
                          }
                        }
                        ticTacToe[2] = true;
                        setState(() {
                          i++;
                          checker();
                        });
                      },
                      child: Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          border: Border.all(
                            width: 1,
                            color: Colors.orange,
                          ),
                        ),
                        child: xoDisplay(type[2]),
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
                        if (ticTacToe[3] == false) {
                          if (i % 2 == 0) {
                            type[3] = 'x';
                          } else {
                            type[3] = 'o';
                          }
                        }
                        ticTacToe[3] = true;
                        setState(() {
                          i++;
                          checker();
                        });
                      },
                      child: Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          border: Border.all(
                            width: 1,
                            color: Colors.orange,
                          ),
                        ),
                        child: xoDisplay(type[3]),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if (ticTacToe[4] == false) {
                          if (i % 2 == 0) {
                            type[4] = 'x';
                          } else {
                            type[4] = 'o';
                          }
                        }
                        ticTacToe[4] = true;
                        setState(() {
                          i++;
                          checker();
                        });
                      },
                      child: Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          border: Border.all(
                            width: 1,
                            color: Colors.orange,
                          ),
                        ),
                        child: xoDisplay(type[4]),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if (ticTacToe[5] == false) {
                          if (i % 2 == 0) {
                            type[5] = 'x';
                          } else {
                            type[5] = 'o';
                          }
                        }
                        ticTacToe[5] = true;
                        setState(() {
                          i++;
                          checker();
                        });
                      },
                      child: Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          border: Border.all(
                            width: 1,
                            color: Colors.orange,
                          ),
                        ),
                        child: xoDisplay(type[5]),
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
                        if (ticTacToe[6] == false) {
                          if (i % 2 == 0) {
                            type[6] = 'x';
                          } else {
                            type[6] = 'o';
                          }
                        }
                        ticTacToe[6] = true;
                        setState(() {
                          i++;
                          checker();
                        });
                      },
                      child: Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          border: Border.all(
                            width: 1,
                            color: Colors.orange,
                          ),
                        ),
                        child: xoDisplay(type[6]),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if (ticTacToe[7] == false) {
                          if (i % 2 == 0) {
                            type[7] = 'x';
                          } else {
                            type[7] = 'o';
                          }
                        }
                        ticTacToe[7] = true;
                        setState(() {
                          i++;
                          checker();
                        });
                      },
                      child: Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          border: Border.all(
                            width: 1,
                            color: Colors.orange,
                          ),
                        ),
                        child: xoDisplay(type[7]),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if (ticTacToe[8] == false) {
                          if (i % 2 == 0) {
                            type[8] = 'x';
                          } else {
                            type[8] = 'o';
                          }
                        }
                        ticTacToe[8] = true;
                        setState(() {
                          i++;
                          checker();
                        });
                      },
                      child: Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          border: Border.all(
                            width: 1,
                            color: Colors.orange,
                          ),
                        ),
                        child: xoDisplay(type[8]),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                checker() == 0
                    ? Container(
                        height: 32,
                      )
                    : (checker() == 1
                        ? Container(
                            child: Text(
                              "O Won this round",
                              style: TextStyle(
                                color: Colors.orange,
                                fontSize: 32,
                              ),
                            ),
                          )
                        : Container(
                            child: Text(
                              "X Won this round",
                              style: TextStyle(
                                color: Colors.orange,
                                fontSize: 32,
                              ),
                            ),
                          )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

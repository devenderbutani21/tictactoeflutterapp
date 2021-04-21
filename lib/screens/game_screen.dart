import 'package:flutter/material.dart';

class GameScreen extends StatefulWidget {
  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
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

  int i = 0;

  bool checker() {
    if ((type[0] == 'o' && type[1] == 'o' && type[2] == 'o') ||
        (type[3] == 'o' && type[4] == 'o' && type[5] == 'o') ||
        (type[6] == 'o' && type[7] == 'o' && type[8] == 'o') ||
        (type[0] == 'o' && type[3] == 'o' && type[6] == 'o') ||
        (type[1] == 'o' && type[4] == 'o' && type[7] == 'o') ||
        (type[2] == 'o' && type[5] == 'o' && type[8] == 'o') ||
        (type[0] == 'o' && type[4] == 'o' && type[8] == 'o') ||
        (type[2] == 'o' && type[4] == 'o' && type[6] == 'o') ||
        (type[0] == 'x' && type[1] == 'x' && type[2] == 'x') ||
        (type[3] == 'x' && type[4] == 'x' && type[5] == 'x') ||
        (type[6] == 'x' && type[7] == 'x' && type[8] == 'x') ||
        (type[0] == 'x' && type[3] == 'x' && type[6] == 'x') ||
        (type[1] == 'x' && type[4] == 'x' && type[7] == 'x') ||
        (type[2] == 'x' && type[5] == 'x' && type[8] == 'x') ||
        (type[0] == 'x' && type[4] == 'x' && type[8] == 'x') ||
        (type[2] == 'x' && type[4] == 'x' && type[6] == 'x')) {
      return false;
    } else {
      return true;
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

  Widget checkLock(bool lock) {
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
            Center(
              child: Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  InkWell(
                    onTap: () {
                      if (tictactoe[0] == false) {
                        if (i % 2 == 0) {
                          type[0] = 'x';
                        } else {
                          type[0] = 'o';
                        }
                      }
                      tictactoe[0] = true;
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
                            color: Colors.white,
                          ),
                        ),
                        child: xoDisplay(type[0])),
                  ),
                  InkWell(
                    onTap: () {
                      if (tictactoe[1] == false) {
                        if (i % 2 == 0) {
                          type[1] = 'x';
                        } else {
                          type[1] = 'o';
                        }
                      }
                      tictactoe[1] = true;
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
                            color: Colors.white,
                          ),
                        ),
                        child: xoDisplay(type[1])),
                  ),
                  InkWell(
                    onTap: () {
                      if (tictactoe[2] == false) {
                        if (i % 2 == 0) {
                          type[2] = 'x';
                        } else {
                          type[2] = 'o';
                        }
                      }
                      tictactoe[2] = true;
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
                          color: Colors.white,
                        ),
                      ),
                      child: xoDisplay(type[2]),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                InkWell(
                  onTap: () {
                    if (tictactoe[3] == false) {
                      if (i % 2 == 0) {
                        type[3] = 'x';
                      } else {
                        type[3] = 'o';
                      }
                    }
                    tictactoe[3] = true;
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
                        color: Colors.white,
                      ),
                    ),
                    child: xoDisplay(type[3]),
                  ),
                ),
                InkWell(
                  onTap: () {
                    if (tictactoe[4] == false) {
                      if (i % 2 == 0) {
                        type[4] = 'x';
                      } else {
                        type[4] = 'o';
                      }
                    }
                    tictactoe[4] = true;
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
                        color: Colors.white,
                      ),
                    ),
                    child: xoDisplay(type[4]),
                  ),
                ),
                InkWell(
                  onTap: () {
                    if (tictactoe[5] == false) {
                      if (i % 2 == 0) {
                        type[5] = 'x';
                      } else {
                        type[5] = 'o';
                      }
                    }
                    tictactoe[5] = true;
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
                        color: Colors.white,
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
                    if (tictactoe[6] == false) {
                      if (i % 2 == 0) {
                        type[6] = 'x';
                      } else {
                        type[6] = 'o';
                      }
                    }
                    tictactoe[6] = true;
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
                        color: Colors.white,
                      ),
                    ),
                    child: xoDisplay(type[6]),
                  ),
                ),
                InkWell(
                  onTap: () {
                    if (tictactoe[7] == false) {
                      if (i % 2 == 0) {
                        type[7] = 'x';
                      } else {
                        type[7] = 'o';
                      }
                    }
                    tictactoe[7] = true;
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
                        color: Colors.white,
                      ),
                    ),
                    child: xoDisplay(type[7]),
                  ),
                ),
                InkWell(
                  onTap: () {
                    if (tictactoe[8] == false) {
                      if (i % 2 == 0) {
                        type[8] = 'x';
                      } else {
                        type[8] = 'o';
                      }
                    }
                    tictactoe[8] = true;
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
                        color: Colors.white,
                      ),
                    ),
                    child: xoDisplay(type[8]),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

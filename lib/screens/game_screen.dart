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

  Widget xoDisplay(String s) {
    if (s == "x") {
      return Center(
        child: Text(
          'X',
          style: TextStyle(fontSize: 108, color: Colors.black),
        ),
      );
    } else if (s == "o") {
      return Center(
        child: Text(
          'O',
          style: TextStyle(fontSize: 108, color: Colors.black),
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
                    print(i);
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
                  child: xoDisplay(type[8]),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

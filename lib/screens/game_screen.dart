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
                onTap: () {},
                child: Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    border: Border.all(
                      width: 1,
                    ),
                  ),
                  child: Center(
                    child: Text('Game Screen'),
                  ),
                ),
              ),
              Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  border: Border.all(
                    width: 1,
                  ),
                ),
                child: Center(
                  child: Text('Game Screen'),
                ),
              ),
              Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  border: Border.all(
                    width: 1,
                  ),
                ),
                child: Center(
                  child: Text('Game Screen'),
                ),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 30,
              ),
              Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  border: Border.all(
                    width: 1,
                  ),
                ),
                child: Center(
                  child: Text('Game Screen'),
                ),
              ),
              Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  border: Border.all(
                    width: 1,
                  ),
                ),
                child: Center(
                  child: Text('Game Screen'),
                ),
              ),
              Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  border: Border.all(
                    width: 1,
                  ),
                ),
                child: Center(
                  child: Text('Game Screen'),
                ),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 30,
              ),
              Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  border: Border.all(
                    width: 1,
                  ),
                ),
                child: Center(
                  child: Text('Game Screen'),
                ),
              ),
              Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  border: Border.all(
                    width: 1,
                  ),
                ),
                child: Center(
                  child: Text('Game Screen'),
                ),
              ),
              Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  border: Border.all(
                    width: 1,
                  ),
                ),
                child: Center(
                  child: Text('Game Screen'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

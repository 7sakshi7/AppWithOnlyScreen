import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          // margin: EdgeInsets.only(top:10.0),
          title: Align(
            alignment: Alignment
                .center, // Align however you like (i.e .centerRight, centerLeft)
            child: Text("Dicee"),
          ),
          backgroundColor: Colors.blue.shade500,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  DicePage({Key key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 5;
  int rightDiceNumber = 4;

  void changeLeftNumber() {
    setState(() {
      leftDiceNumber = new Random().nextInt(6) + 1;
    });
  }

  void changeRightNumber() {
    setState(() {
      rightDiceNumber = new Random().nextInt(6) + 1;
    });
  }

  // void changeBothNumber() {
  //   setState(() {
  //      leftDiceNumber = new Random().nextInt(6) + 1;
  //     rightDiceNumber = new Random().nextInt(6)+1;
  //   });
  // }
//  This is a methos if we wanted to change both dice when either dice is clicked
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: changeLeftNumber,
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: changeRightNumber,
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}

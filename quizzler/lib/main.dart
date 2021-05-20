import 'package:flutter/material.dart';
import './quizpage.dart';

void main() {
  runApp(Quizzler());
}

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade400,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    ));
  }
}

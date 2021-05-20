import 'package:flutter/material.dart';

import './showscore.dart';

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Widget> scorekeeper = [
    // Icon(Icons.check, color: Colors.green),
    // Icon(Icons.close, color: Colors.red),
  ];

  List<String> question = [
    'Is padding a single child widget',
    'We Can\'t use circle avatar for making user\'s profile?',
    'Do we have something mixture of property and method in flutter?'
  ];

  List<bool> answers = [true, false, true];

  void checkAnswer(index, ans) {
    if (answers[index] == ans) {
      scorekeeper.add(Icon(Icons.check, color: Colors.green));
      score++;
      print(score);
    } else
      scorekeeper.add(Icon(Icons.close, color: Colors.red));
  }

  int questionIndex = 0, score = 0;
  void reset() {
    setState(() {
      questionIndex = 0;
      score = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return (Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                question[questionIndex],
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
                color: Colors.green,
                onPressed: () {
                  setState(() {
                    checkAnswer(questionIndex, true);

                    if (questionIndex + 1 == question.length) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ShowScore(userscore: score),
                          ));
                      // reset();
                    }
                    if (questionIndex + 1 < question.length) {
                      questionIndex = questionIndex + 1;
                    }
                  });
                },
                child: Text(
                  'True',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
                color: Colors.red,
                onPressed: () {
                  setState(() {
                    checkAnswer(questionIndex, false);
                    if (questionIndex + 1 == question.length) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ShowScore(userscore: score),
                          ));
                      // reset();
                    }
                    if (questionIndex + 1 < question.length) {
                      questionIndex = questionIndex + 1;
                    }
                  });
                },
                child: Text(
                  'False',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )),
          ),
        ),
        Row(
          children: scorekeeper,
        ),
      ],
    ));
  }
}

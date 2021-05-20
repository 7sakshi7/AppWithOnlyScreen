import 'package:flutter/material.dart';

class ShowScore extends StatelessWidget {
  final int userscore;

  const ShowScore({this.userscore});

  String get resultPhase {
    String result;
    if (userscore == 0)
      result = 'Better Luck Next Time!!!';
    else if (userscore == 1)
      result = 'Good!!';
    else if (userscore == 2)
      result = 'Excellent';
    else
      result = 'Great Job ... Outstanding!!';

    return result;
  }

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      backgroundColor: Colors.deepOrange.shade200,
      body: Center(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(15.0),
          child: Text(
            'Congratulations!! You have successfully completed this quiz\n You have scored $userscore points $resultPhase',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    ));
  }
}

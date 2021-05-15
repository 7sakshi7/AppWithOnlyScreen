import 'package:flutter/material.dart';

class BirthDay extends StatelessWidget {
  final String birthdayname;
  // final Function resetHandler;

  BirthDay({this.birthdayname});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade700,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                'Birthday Greet',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Text(
              'Happy Birthday $birthdayname !!!!!!',
              style: TextStyle(
                fontSize: 45,
                fontFamily: 'Pacifico',
                color: Colors.purple.shade900,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Container(
              child: Image.asset('images/birthaday2.jpg'),
            ),
          )
        ],
      ),
    );
  }
}

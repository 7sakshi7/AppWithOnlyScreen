import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int imageNumber = 1;

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Align(
            alignment: Alignment.center,
            child: Text('Ask Any Question'),
          ),
          backgroundColor: Colors.red,
        ),
        body: FlatButton(
          onPressed: () {
            setState(() {
              imageNumber = Random().nextInt(5) + 1;
              print('buuton prses $imageNumber');
            });
          },
          child: Center(
            child: Image.asset('images/ball$imageNumber.png'),
          ),
        ),
      ),
    ));
  }
}

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple[200],
        appBar: AppBar(
          title: Text(
            'I Am Rich',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
            ),
          ),
          backgroundColor: Colors.cyanAccent[900],
        ),
        body: Center(
          child: Image(image: AssetImage('images/bg.jpg')
              // NetworkImage('https://www.w3schools.com/w3css/img_lights.jpg'),
              ),
        ),
      ),
    );
  }
}

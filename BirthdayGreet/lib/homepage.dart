import 'package:flutter/material.dart';

import './birthadayCard.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _name;
  final _namecon = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return (Center(
      child: Padding(
        padding: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _namecon,
              decoration:
                  InputDecoration(hintText: 'Enter Name for Birthday Greet'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: RaisedButton(
                onPressed: () {
                  _name = _namecon.text;
                  print(_name);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BirthDay(
                                birthdayname: _name,
                              )));
                  print("Function called");
                },
                child: Text(
                  'Create Birthday Card',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}

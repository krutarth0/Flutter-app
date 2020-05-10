import 'package:flutter/material.dart';

import './heading.dart';
import './buttons.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var buttonString = 'default';

  void buttonState(input) {
    setState(() {
      buttonString = input;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: Color.fromRGBO(255, 100, 100, 0.5),
          child: Container(
            padding: EdgeInsets.all(50),
            child: Column(
              children: [
                Heading(buttonString),
                Button(
                  buttonText: 'first ',
                  callback: () => buttonState('first button'),
                ),
                Button(
                  buttonText: 'second',
                  callback: () => buttonState('second button'),
                ),
                Button(
                  buttonText: 'third',
                  callback: () => buttonState('third button'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

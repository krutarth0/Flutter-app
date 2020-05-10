import 'package:flutter/material.dart';

class Button extends StatelessWidget {

  final String buttonText;
  final callback;
Button({this.buttonText,this.callback});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child:RaisedButton(
        color: Colors.cyan[500],
              child: Text(buttonText),
              onPressed: callback,
            ),
    );
  }
}
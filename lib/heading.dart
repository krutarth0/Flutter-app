import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  final String heading;

  Heading(this.heading);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 40,
      margin: EdgeInsets.all(20),
      child: Text(
        heading,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}

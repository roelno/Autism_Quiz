import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    var questions = [
      'I like to do things the same way.',
      'I would rather hang out alone rather than go to a party with friends.'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz Now'),
        ),
        body: Column(
          children: [
            Text('The question!'),
            RaisedButton(
              child: Text('Never'),
              onPressed: null,
            ),
            RaisedButton(child: Text('Some of the time'), onPressed: null),
            RaisedButton(child: Text('Most of the time'), onPressed: null),
          ],
        ),
      ),
    );
  }
}

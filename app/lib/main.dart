import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState(); //connect the above and below pieces
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });

    print('Answer chosen!');
  }

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
            Text(questions[questionIndex]),
            RaisedButton(
              child: Text('Never'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Some of the time'),
              onPressed: () => print('Answer 2 is chosen!'),
            ),
            RaisedButton(
              child: Text('Most of the time'),
              onPressed: () {
                //...
                print('Answer 3 is chosen!');
              },
            ),
          ],
        ),
      ),
    );
  }
}

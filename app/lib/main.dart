import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState(); //connect the above and below pieces
  }
}

class _MyAppState extends State<MyApp> {
  final questions = const [
    //or use static const
    {
      'questionText': 'I like to do things the same way.',
      'answers': ['Never', 'Some of the time', 'Most of the time']
    },
    {
      'questionText':
          'I would rather hang out alone rather than go to a party with friends.',
      'answers': ['Never', 'Some of the time', 'Most of the time'],
    },
    {
      'questionText': 'I tend to notice small details that others don’t.',
      'answers': ['Never', 'Some of the time', 'Most of the time']
    }
  ];
  var _questionIndex = 0;

  void _answerQuestion() {
    //var aBool = true;
    //aBool = false;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz Now'),
        ),
        body: _questionIndex < questions.length
            ? Column(
                children: [
                  Question(questions[_questionIndex]['questionText'] as String),
                  ...(questions[_questionIndex]['answers'] as List<String>)

                      ///
                      .map((answer) {
                    return Answer(_answerQuestion, answer);
                  }).toList()
                ],
              )
            : Center(child: Text('You did it!')),
      ),
    );
  }
}

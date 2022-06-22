import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/result.dart';
import './quiz.dart';
import './question.dart';
import './answer.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState(); //connect the above and below pieces
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    //or use static const
    {
      'questionText': 'I like to do things the same way.',
      'answers': [
        {'text': 'Never', 'score': 0},
        {'text': 'Some of the time', 'score': 1},
        {'text': 'Most of the time', 'score': 2},
      ]
    },
    {
      'questionText':
          'I would rather hang out alone rather than go to a party with friends.',
      'answers': [
        {'text': 'Never', 'score': 0},
        {'text': 'Some of the time', 'score': 1},
        {'text': 'Most of the time', 'score': 2},
      ],
    },
    {
      'questionText': 'I tend to notice small details that others don’t.',
      'answers': [
        {'text': 'Never', 'score': 0},
        {'text': 'Some of the time', 'score': 1},
        {'text': 'Most of the time', 'score': 2},
      ]
    }
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    //var aBool = true;
    //aBool = false;

    _totalScore = _totalScore + score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
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
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
              : Result(_totalScore)),
    );
  }
}

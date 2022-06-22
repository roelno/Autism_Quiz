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
      'questionText': '1/20 我喜欢以同样的方式做一件事。',
      'answers': [
        {'text': '从不', 'score': 0},
        {'text': '有时候', 'score': 1},
        {'text': '大多数时候', 'score': 2},
      ]
    },
    {
      'questionText': '2/20 我宁愿一个人出去玩，也不愿和朋友一起去派对。',
      'answers': [
        {'text': '从不', 'score': 0},
        {'text': '有时候', 'score': 1},
        {'text': '大多数时候', 'score': 2},
      ],
    },
    {
      'questionText': '3/20 我倾向于注意到其他人没有注意到的小细节。',
      'answers': [
        {'text': '从不', 'score': 0},
        {'text': '有时候', 'score': 1},
        {'text': '大多数时候', 'score': 2},
      ]
    },
    {
      'questionText': '4/20 当我阅读故事时，我很难想象角色会是什么样子，也很难弄清楚角色的意图。',
      'answers': [
        {'text': 'Never', 'score': 0},
        {'text': 'Some of the time', 'score': 1},
        {'text': 'Most of the time', 'score': 2},
      ]
    },
    {
      'questionText': '5/20 我发现自己更被人吸引，而不是被事物或孤独的活动（包括电子游戏）所吸引。',
      'answers': [
        {'text': '从不', 'score': 0},
        {'text': '有时候', 'score': 1},
        {'text': '大多数时候', 'score': 2},
      ]
    },
    {
      'questionText': '6/20 我喜欢社交聚会和/或发现社交环境很容易。',
      'answers': [
        {'text': '从不', 'score': 0},
        {'text': '有时候', 'score': 1},
        {'text': '大多数时候', 'score': 2},
      ]
    },
    {
      'questionText': '7/20 很多场合，有人告诉我，我说的话是不礼貌的，尽管我认为这很有礼貌。',
      'answers': [
        {'text': '从不', 'score': 0},
        {'text': '有时候', 'score': 1},
        {'text': '大多数时候', 'score': 2},
      ]
    },
    {
      'questionText': '8/20 我经常发现很难保持对话。',
      'answers': [
        {'text': '从不', 'score': 0},
        {'text': '有时候', 'score': 1},
        {'text': '大多数时候', 'score': 2},
      ]
    },
    {
      'questionText': '9/20 我发现很难想象成为别人会是什么样子。',
      'answers': [
        {'text': '从不', 'score': 0},
        {'text': '有时候', 'score': 1},
        {'text': '大多数时候', 'score': 2},
      ]
    },
    {
      'questionText': '10/20 我更关注整个画面，而不是小细节。',
      'answers': [
        {'text': '从不', 'score': 0},
        {'text': '有时候', 'score': 1},
        {'text': '大多数时候', 'score': 2},
      ]
    },
    {
      'questionText': '11/20 我倾向于有非常强烈的兴趣，如果我不能追求它们，我会感到不安。',
      'answers': [
        {'text': '从不', 'score': 0},
        {'text': '有时候', 'score': 1},
        {'text': '大多数时候', 'score': 2},
      ]
    },
    {
      'questionText': '12/20 当我说话时，别人插嘴并不总是那么容易。',
      'answers': [
        {'text': '从不', 'score': 0},
        {'text': '有时候', 'score': 1},
        {'text': '大多数时候', 'score': 2},
      ]
    },
    {
      'questionText': '13/20 当有人和我说话时，我发现很容易“字里行间阅读”（了解他们的真实感受或意图）。',
      'answers': [
        {'text': 'Never', 'score': 0},
        {'text': 'Some of the time', 'score': 1},
        {'text': 'Most of the time', 'score': 2},
      ]
    },
    {
      'questionText': '14/20 我发现，仅仅通过看着某人的脸，就很容易理解他们的想法或感受。',
      'answers': [
        {'text': '从不', 'score': 0},
        {'text': '有时候', 'score': 1},
        {'text': '大多数时候', 'score': 2},
      ]
    },
    {
      'questionText': '15/20 当别人没有注意到时，我经常注意到小声音。',
      'answers': [
        {'text': '从不', 'score': 0},
        {'text': '有时候', 'score': 1},
        {'text': '大多数时候', 'score': 2},
      ]
    },
    {
      'questionText': '16/20 数字、日期或一串信息让我着迷。',
      'answers': [
        {'text': '从不', 'score': 0},
        {'text': '有时候', 'score': 1},
        {'text': '大多数时候', 'score': 2},
      ]
    },
    {
      'questionText': '17/20 我可以很容易地识别事物的模式。',
      'answers': [
        {'text': '从不', 'score': 0},
        {'text': '有时候', 'score': 1},
        {'text': '大多数时候', 'score': 2},
      ]
    },
    {
      'questionText': '18/20 新情况让我焦虑和紧张。',
      'answers': [
        {'text': '从不', 'score': 0},
        {'text': '有时候', 'score': 1},
        {'text': '大多数时候', 'score': 2},
      ]
    },
    {
      'questionText': '19/20 我更喜欢读关于恐龙等非小说类书籍。',
      'answers': [
        {'text': '从不', 'score': 0},
        {'text': '有时候', 'score': 1},
        {'text': '大多数时候', 'score': 2},
      ]
    },
    {
      'questionText': '20/20 我发现很难弄清楚人们的意图。',
      'answers': [
        {'text': '从不', 'score': 0},
        {'text': '有时候', 'score': 1},
        {'text': '大多数时候', 'score': 2},
      ]
    },
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

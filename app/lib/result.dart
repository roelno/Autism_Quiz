import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 26) {
      resultText =
          'Scoring in this range means it may be a good idea to monitor your symptoms and keep track of the severity of these behaviors and when they are present. ';
    } else {
      resultText =
          'Based on your responses, you may benefit from seeing a mental health professional for an evaluation, particularly if any of the items on the list impact your ability to be successful in your work or personal life.';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold)));
  }
}

import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List <Map>(String,Object) questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({required this.questions,required this.answerQuestion,required this.questionIndex});//With null safety, use the 'required' keyword, not the '@required' annotation.

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['questionText'] as String),
        ...(questions[questionIndex]['answers'] as List<String>)

            ///
            .map((answer) {
          return Answer(answerQuestion, answer);
        }).toList()
      ],
    );
  }
}

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectButton; //👉Function
  final String answerText;

  Answer(this.selectButton, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(answerText),
        onPressed: selectButton,
      ),
    );
  }
}

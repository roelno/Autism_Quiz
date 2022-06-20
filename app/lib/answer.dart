import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectButton;

  Answer(this.selectButton);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text('Never'),
        onPressed: selectButton,
      ),
    );
  }
}

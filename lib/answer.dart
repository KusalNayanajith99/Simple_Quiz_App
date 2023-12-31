import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;
  final int score;

  Answer(this.selectHandler, this.answerText, this.score);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all(Colors.blueAccent), //color of button
          foregroundColor:
              MaterialStateProperty.all<Color>(Colors.white), //Text color
        ),
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}

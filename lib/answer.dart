import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  String answerText;
  String answerScore;
  final Function selectHandler;
  Answer(this.answerText, this.selectHandler, this.answerScore);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(this.answerText),
        color: Colors.amber.shade200,
        onPressed: () => selectHandler(answerScore),
      ),
    );
  }
}

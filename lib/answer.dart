import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  String answerText;
  final Function selectHandler;
  Answer(this.answerText, this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(this.answerText),
        color: Colors.amber.shade200,
        onPressed: () => selectHandler(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:quizapp/answer.dart';
import 'package:quizapp/question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function ansQues;

  Quiz(this.questions, this.questionIndex, this.ansQues);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'].toString(),
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((a) {
          return Answer(a["text"] as String, ansQues, a["score"] as String);
        })
      ],
    );
  }
}

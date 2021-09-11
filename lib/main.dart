import 'package:flutter/material.dart';
import 'package:quizapp/quiz.dart';
import 'package:quizapp/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var totalScore = 0;
  final _questions = [
    {
      'questionText': 'what is your fav color?',
      "answers": [
        {"text": 'red', "score": "10"},
        {"text": 'blue', 'score': "7"},
        {'text': 'green', 'score': "5"},
        {'text': 'purple', 'score': "1"}
      ]
    },
    {
      'questionText': "what is your fav animal?",
      "answers": [
        {"text": 'bear', "score": "10"},
        {"text": 'panther', 'score': "7"},
        {'text': 'goat', 'score': "5"},
        {'text': 'cat', 'score': "1"}
      ]
    },
    {
      'questionText': "what is your fav place?",
      "answers": [
        {"text": 'ratlam', "score": "10"},
        {"text": 'baner', 'score': "7"},
        {'text': 'goa', 'score': "5"},
        {'text': 'palampur', 'score': "1"}
      ]
    },
    {
      'questionText': "what is your fav timepass?",
      "answers": [
        {"text": 'reading', "score": "10"},
        {"text": 'blue', 'score': "7"},
        {'text': 'green', 'score': "5"},
        {'text': 'purple', 'score': "1"}
      ]
    },
  ];

  void _answerQuestion(chosenScore) {
    setState(() {
      _questionIndex = _questionIndex + 1;
      totalScore = totalScore + int.parse(chosenScore);
    });
    print(_questionIndex);
  }

  void _reset() {
    setState(() {
      _questionIndex = 0;
      totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(title: Text('Hello there')),
          body: _questionIndex < _questions.length
              ? Quiz(_questions, _questionIndex, _answerQuestion)
              : Result(totalScore, _reset)),
    );
  }
}

import 'package:flutter/material.dart';
import './question.dart';
import "./answer.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = (_questionIndex + 1) % 4;
    });
    print(_questionIndex);
  }

  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'what is your fav color?',
        "answers": ['red', 'blue', 'green', 'purple']
      },
      {
        'questionText': "what is your fav animal?",
        "answers": ['cat', 'bear', 'goat', 'panther']
      },
      {
        'questionText': "what is your fav city?",
        "answers": ['ratlam', 'baner', 'goa', 'palampur']
      },
      {
        'questionText': "what is your fav timepass?",
        "answers": ['reading', 'blue', 'green', 'purple']
      },
    ];
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(title: Text('Hello there')),
          body: Column(
            children: [
              Question(
                questions[_questionIndex]['questionText'].toString(),
              ),
              ...(questions[_questionIndex]['answers'] as List<String>)
                  .map((a) {
                return Answer(a, _answerQuestion);
              })
            ],
          )),
    );
  }
}

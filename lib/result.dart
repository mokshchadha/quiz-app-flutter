import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final totalScore;
  final Function reset;
  const Result(this.totalScore, this.reset);

  String get resultPhase {
    return totalScore > 20
        ? "You are awesome, smart and naughty"
        : "You are an awesome and innocent being";
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhase,
            style: TextStyle(fontSize: 20),
          ),
          TextButton(onPressed: () => reset(), child: Text('Retake test?'))
        ],
      ),
    );
  }
}

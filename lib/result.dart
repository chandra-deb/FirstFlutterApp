import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function handleReset;

  Result(this.score, this.handleReset);

  String get resultPhrase {
    String resultText;

    if (score <= 8) {
      resultText = 'You are great!';
    } else if (score <= 12) {
      resultText = 'You are Awesome!';
    } else {
      resultText = 'You are bad!';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(onPressed: handleReset, child: Text('Restart Quiz?'))
        ],
      ),
    );
  }
}

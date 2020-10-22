import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function handleReset;
  final int score;

  Result(this.handleReset, this.score);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(24),
      width: double.infinity,
      child: Column(
        children: [
          Text(
            'You Completed the quiz!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 26,
            ),
            textAlign: TextAlign.center,
          ),
          Text('Your Score is ${score}'),
          FlatButton(onPressed: handleReset, child: Text('Start Again?'))
        ],
      ),
    );
  }
}

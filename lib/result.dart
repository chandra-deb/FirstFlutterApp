import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function handleReset;

  Result(this.handleReset);

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
          FlatButton(onPressed: handleReset, child: Text('Start Again?'))
        ],
      ),
    );
  }
}

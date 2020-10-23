import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function handleQuestion;

  Question({
    this.questions,
    this.questionIndex,
    this.handleQuestion,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(24),
      width: double.infinity,
      child: Column(
        children: [
          Text(
            questions[questionIndex]['questionText'],
            style: TextStyle(fontSize: 26, color: Colors.white),
            textAlign: TextAlign.center,
          ),
          Container(
            margin: EdgeInsets.only(top: 24),
            child: Column(
              children: [
                ...(questions[questionIndex]['answerOptions'] as List<String>)
                    .map(
                  (option) => RaisedButton(
                    highlightColor: Colors.blueAccent,
                    textColor: Colors.black54,

                    // ToDo $$Complete This onpress function$$
                    onPressed: () => handleQuestion(
                      questions[questionIndex]['correctIndex'],
                      (questions[questionIndex]['answerOptions']
                              as List<String>)
                          .indexOf(option),
                    ),
                    child: Text(
                      option,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:myapp/quiz.dart';
import 'package:myapp/result.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  var totalScore = 0;

  final questions = const [
    {
      'questionText': 'What is your favorite color?',
      'answerText': [
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'Blue', 'score': 4},
        {'text': 'Red', 'score': 7}
      ]
    },
    {
      'questionText': 'What is your favorite Animal?',
      'answerText': [
        {'text': 'Cow', 'score': 5},
        {'text': 'Bull', 'score': 3},
        {'text': 'Got', 'score': 4},
        {'text': 'Tiger', 'score': 7}
      ]
    }
  ];

  void resetQuiz() {
    setState(() {
      questionIndex = 0;
      totalScore = 0;
    });
  }

  void answerQuestion(int score) {
    setState(() {
      questionIndex += 1;
    });
    totalScore += score;
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('My first app'),
        ),
        body: questionIndex < questions.length
            ? Quiz(
                answerQuestion: answerQuestion,
                questionIndex: questionIndex,
                questions: questions,
              )
            : Result(totalScore, resetQuiz),
      ),
    );
  }
}

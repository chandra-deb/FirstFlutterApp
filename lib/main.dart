import 'package:flutter/material.dart';
import 'package:myapp/result.dart';
import './question.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AppState();
}

class _AppState extends State<App> {
  int questionIndex = 0;
  int score = 0;
  final questions = const [
    {
      'questionText': 'When Bangladesh got independence?',
      'correctIndex': 4,
      'answerOptions': [
        '1970',
        '1888',
        '1222',
        '1971',
      ],
    },
    {
      'questionText': 'Bangladesh\'s independence day??',
      'correctIndex': 3,
      'answerOptions': [
        '23 March',
        '10 January',
        '26 March',
        '25 May',
      ],
    },
    {
      'questionText': 'Who is Bangladesh\'s first president?',
      'correctIndex': 2,
      'answerOptions': [
        'Mujibur Rahman',
        'Tajuddin Ahmed',
        'YeaHia Khan',
        'Syed Nazrul',
      ]
    },
    {
      'questionText': 'Who am I?',
      'correctIndex': 1,
      'answerOptions': [
        'Man',
        'Animal',
        'Deamon',
        'Nothing',
      ]
    }
  ];

  void handleQuestion(int correctIndex, int answeredIndex) {
    setState(() {
      questionIndex += 1;
    });
    answeredIndex += 1;
    if (correctIndex == answeredIndex) {
      score += 5;
    }
  }

  void handleReset() {
    setState(() {
      questionIndex = 0;
      score = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ask',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text('Ask'),
          centerTitle: true,
        ),
        backgroundColor: Colors.lightBlue,
        body: questionIndex < questions.length
            ? Question(
                questions: questions,
                questionIndex: questionIndex,
                handleQuestion: handleQuestion,
              )
            : Result(handleReset, score),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import './question.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AppState();
}

class _AppState extends State<App> {
  int questionIndex = 0;
  final questions = const [
    {
      'questionText': 'When Bangladesh got independence?',
      'answerOptions': [
        '1970',
        '1888',
        '1222',
        '1971',
      ]
    },
    {
      'questionText': 'Who is Bangladesh\'s first president?',
      'answerOptions': [
        'Mujibur Rahman',
        'Tajuddin Ahmed',
        'YeaHia Khan',
        'Syed Nazrul',
      ]
    },
    {
      'questionText': 'Who am I?',
      'answerOptions': [
        'Man',
        'Animal',
        'Deamon',
        'Nothing',
      ]
    }
  ];

  void changeQuestion() {
    setState(() {
      questionIndex += 1;
    });
    print(questionIndex);
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
        body: Question(
          questions: questions,
          questionIndex: questionIndex,
          handleQuestion: changeQuestion,
        ),
      ),
    );
  }
}

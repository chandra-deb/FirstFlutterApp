import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

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
  final questions = const [
    {
      'questionText': 'What is your favorite color?',
      'answerText': [
        'Red',
        'Green',
        'Blue',
        'Yellow',
      ]
    },
    {
      'questionText': 'What is your favorite Animal?',
      'answerText': [
        'Cow',
        'Got',
        'Tiger',
        'Manimal',
      ]
    }
  ];
  var questionIndex = 0;
  void answerQuestion() {
    setState(() {
      questionIndex += 1;
    });

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
              ? Column(
                  children: <Widget>[
                    Question(questions[questionIndex]['questionText']),
                    ...(questions[questionIndex]['answerText'] as List<String>)
                        .map((answer) {
                      return Answer(answerQuestion, answer);
                    })
                  ],
                )
              : Center(
                  child: Text(
                    'You Did It!',
                    style: TextStyle(fontSize: 24),
                  ),
                )),
    );
  }
}

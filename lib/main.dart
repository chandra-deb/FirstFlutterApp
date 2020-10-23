import 'package:flutter/material.dart';
import 'package:myapp/result.dart';
import './question.dart';
import './data.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AppState();
}

class _AppState extends State<App> {
  int questionIndex = 0;
  int score = 0;
  final questions = Data.data;
  bool showAddQuestionButton = true;

  Widget bodyController() {
    if (questions.length == 0) {
      return Text('You have not added any question!');
    } else {
      return questionIndex < questions.length
          ? Question(
              questions: questions,
              questionIndex: questionIndex,
              handleQuestion: handleQuestion,
            )
          : Result(handleReset, score);
    }
  }

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
        body: Column(
          children: [
            bodyController(),
          ],
        ),
      ),
    );
  }
}

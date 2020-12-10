import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  var questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 5},
        {'text': 'Violet', 'score': 4},
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Dog', 'score': 1},
        {'text': 'Cat', 'score': 2},
        {'text': 'Goat', 'score': 10},
        {'text': 'Rabbit', 'score': 7},
      ]
    },
    {
      'questionText': 'Who\'s is your favorite singer?',
      'answers': [
        {'text': 'Michael Jackson', 'score': 1},
        {'text': 'Madonna', 'score': 2},
        {'text': 'Dua Lipa', 'score': 4},
        {'text': 'Miley Cyrus', 'score': 10}
      ]
    },
  ];

  int overallScore = 0;

  void _answerQuestion(int score) {
    if (_questionIndex < questions.length) {}
    setState(() {
      overallScore += score;
      _questionIndex++;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      overallScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Questions App!'),
        ),
        body: _questionIndex < questions.length
            ? Quiz(questions[_questionIndex], _answerQuestion)
            : Result(overallScore, _resetQuiz),
      ),
    );
  }
}

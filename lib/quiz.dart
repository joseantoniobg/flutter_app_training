import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final question;
  final Function selectHander;

  Quiz(this.question, this.selectHander);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(question['questionText']),
      ...(question['answers'] as List<Map<String, Object>>).map((answer) {
        return Answer(() => selectHander(answer['score']), answer['text']);
      }).toList(),
    ]);
  }
}

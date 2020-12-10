import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int overallScore;
  final Function resetQ;

  Result(this.overallScore, this.resetQ);

  String get resultPhrase {
    String resultText = '';

    if (overallScore <= 5) {
      resultText = 'Hummm! A innocent person has arrived!';
    } else if (overallScore >= 6 && overallScore <= 22) {
      resultText = 'Well Done! You are normal!';
    } else {
      resultText = 'That\'s bad... Really bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
          width: double.infinity,
          child: Text(
              resultPhrase + ' Your Final Score is ' + overallScore.toString(),
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center)),
      FlatButton(onPressed: resetQ, child: Text('Restart Quiz!'))
    ]);
  }
}

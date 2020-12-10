import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHendler;
  final String caption;

  Answer(this.selectHendler, this.caption);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        child: Text(caption),
        onPressed: selectHendler,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHAandler;
  final String answerText;

  Answer(this.selectHAandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(answerText),
        onPressed: selectHAandler,
      ),
    );
  }
}

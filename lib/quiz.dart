import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionIndex;

  Quiz({
    @required this.questions,
    @required this.answerQuestion,
    @required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'] as String,
        ),
        ...(questions[questionIndex]['answer'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              () => answerQuestion(answer['score']), answer['text'] as String);
        }).toList()

        // RaisedButton(
        //   child: Text('Answer 1'),
        //   onPressed: _answerQuestion,
        // ),
        // RaisedButton(
        //   child: Text('Answer 1'),
        //   onPressed: () => print('Answer 2 chosen'),
        // ),
        // RaisedButton(
        //   child: Text('Answer 1'),
        //   onPressed: () {
        //     // ..
        //     // ..
        //     print('Answer 3 chosen');
        //   },
        // ),
        // Answer(_answerQuestion),
        // Answer(_answerQuestion),
        // Answer(_answerQuestion),
      ],
    );
  }
}

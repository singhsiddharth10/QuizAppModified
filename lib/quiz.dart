import 'package:flutter/material.dart';
import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final Function answerQues;
  final List<Map<String,Object>> question;
  final int index;
  Quiz(this.answerQues,this.question,this.index);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(
          question[index]['questionText'],
        ),
        ...(question[index]['answer'] as List<String>).map((answer){
          return Answer(answerQues, answer);
        }).toList()

      ],
    );
  }
}

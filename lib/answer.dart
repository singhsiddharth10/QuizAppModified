import 'package:flutter/material.dart';
class Answer extends StatelessWidget {
  final Function answer;
  final String ansText;
  Answer(this.answer,this.ansText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(left:20.0,right: 20.0),
        child: RaisedButton(
          color: Colors.lightBlueAccent,
          textColor: Colors.white,
          child: Text(ansText),
          onPressed: answer,
        ),
      ),
    );
  }
}

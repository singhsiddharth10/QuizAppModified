import 'package:flutter/material.dart';
class Result extends StatelessWidget {
  final Function reset;
  Result(this.reset);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text('You did it',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          FlatButton(
            child: Text('Restart Quiz'),
            textColor: Colors.lightBlueAccent,
            onPressed: reset,
          )
        ],
      ),
    );

  }
}

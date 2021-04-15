import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget>createState(){
    return MyAppState();
  }
}
class MyAppState extends State<MyApp> {
  final question = [
    //map represent {}
    {'questionText':'What\'s  your favourite color? ','answer':[
      'Black', 'Red','Green','White']},
    {'questionText':'What\'s your favourite animal?','answer':[
      'Bat', 'Rat','Cat','fish']},
    {'questionText':'What\'s your favourite subject?','answer':[
      'Math', 'English','Chem','Phy']},
  ];
  int index = 0;
  void resetQuiz(){
    setState(() {
      index = 0;
    });

  }
  void answerQues(){
    setState(() {
      index++;
    });

  }
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'My first APP',
          ),
        ),
        body: index < question.length ?  Quiz(answerQues,question,index): Result(resetQuiz)
      ),
    );
  }
}



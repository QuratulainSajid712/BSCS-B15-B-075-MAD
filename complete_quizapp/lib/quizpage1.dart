import 'dart:async';

import 'package:flutter/material.dart';
import 'quiz_brain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'maindrawer.dart';

QuizBrain quizBrain= QuizBrain();


class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List <Icon> scorekeeper=[];
  QuizBrain quizBrain = QuizBrain();
  String timer = '';
  List<Widget> scoreKeeper = [];
  int count_correct = 0;
  int count_wrong = 0;
  void checkAnswer(bool userPickedAnswer){
    bool correctAnswer = quizBrain.getCorrectAnswer();
    setState(() {
      if(quizBrain.isFinished()== true){
        Alert(context: context,
        title: 'Finished',
        desc:
            'You\'ve reached the end of the quiz.\n True Answer: $count_correct\nWrong Answer: $count_wrong', ).show();
        quizBrain.reset();
        scorekeeper=[];
      }
      else{
        if(userPickedAnswer==correctAnswer){
          count_correct += 1;
          scorekeeper.add(Icon(
            Icons.check,
            color: Colors.green,
          ));
        }
        else{
          count_wrong += 1;
          scorekeeper.add(Icon(
            Icons.close,
            color: Colors.red,
          ));
        }
        quizBrain.nextQuestion();
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("True/False" ,textAlign: TextAlign.center,),
      ),
      drawer: Drawer(
        child: MainDrawer(),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TweenAnimationBuilder<Duration>(
                duration: Duration(seconds: 30),
                tween: Tween(begin: Duration(seconds: 30), end: Duration.zero),
                onEnd: () {
                   print('Timer ended');
                  quizBrain.reset();
                  quizBrain.shuffle();
                  scoreKeeper = [];

                  timer = 'time';

                },
                builder: (BuildContext context, Duration value, Widget child) {
                  var minutes = value.inMinutes;
                  var seconds = value.inSeconds % 30;

                  return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.alarm,
                            color: Colors.red,
                            size: 50,
                          ),
                          Text('$minutes:$seconds',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 50))
                        ],
                      ));
                }),
            Container(
              height: 50,
              width: 150,
              child: FlatButton(
                color: Colors.red,
                textColor: Colors.white,
                child: new Text(
                  "Stop Quiz",
                  style: TextStyle(fontSize: 25),
                ),
                onPressed: () {
                  // quizBrain.reset();
                  // quizBrain.shuffle();
                  // scoreKeeper = [];
                  // showAlert(context);
                  timer = 'stop';
                },
              ),
            ),

            Expanded(
              flex: 5,
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Center(
                  child: Text(
                    quizBrain.getQuestionText(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: FlatButton(
                  textColor: Colors.white,
                  color: Colors.green,
                  child: Text(
                    'True',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                  onPressed: () {
                    checkAnswer(true);
                  },
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: FlatButton(
                  color: Colors.red,
                  child: Text(
                    'False',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    checkAnswer(false);
                  },
                ),
              ),
            ),
            Row(
              children:scorekeeper,
            ),
          ],
        ),
      ),
    );
  }
}

/*
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,
*/
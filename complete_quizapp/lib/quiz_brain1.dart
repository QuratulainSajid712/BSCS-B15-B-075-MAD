import 'package:flutter/cupertino.dart';
import 'package:complete_quizapp/question1.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('Who developed Flutter?',
        ["Google", "Microsoft", "Facebook", "Mozilla"], 1),
    Question('Which language used by Flutter',
        ["Swift", "C++", "Dart", "Angular"], 3),
    Question('Does flutter is used only for Android Application Devlopment?',
        ["True", "False"], 2),
    Question('In which year flutter was introduced?',
        ["2019", "2020", "2015", "2018"], 4),
    Question('How many State widget flutter have?', ["1", "2", "3", "4"], 2),
    Question('Which of the following used for hybrid app development?',
        ["Ionic", "Flutter", "React Native", "All above"], 4),
    Question('What is the correct way to define Text in flutter?',
        ["Text('Some value')", "text()", "TEXT(hello)", "Text(somevalue)"], 1),
    Question(
        'A notable feature of the Dart platform is its support for "hot reload"',
        ["True", "False"],
        1),
    Question('Which of the following cannot be build in flutter?',
        ["Web", "IOS", "Android", "None of the Above"], 4),
    Question('What is the latest version of flutter',
        ["1.25.4", "1.22.9", "1.22.4", "1.22.3"], 3)
  ]
    ..shuffle();

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }
  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  String getQuestionText_index(int index) {
    return _questionBank[index].questionText;
  }

  int get_number() {
    return _questionNumber;
  }

  int getCorrectAnswer() {
    return _questionBank[_questionNumber].index;
  }

  int getCorrectAnswer_index(int index) {
    return _questionBank[index].index;
  }

  List<String> getoptions() {
    return _questionBank[_questionNumber].data;
  }

  List<String> getoptions_index(int index) {
    return _questionBank[index].data;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  List<Widget> getallquestion(List<int> wrongans, int type) {
    List<Widget> temp = [];
    for (int i = 0; i < wrongans.length; i++) {
      int t = wrongans[i];
      if (t != -10) {
        if (i == 0 && type == 0) {
          temp.add(Text(
            "Wrong Answers",
            style: TextStyle(
                fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold),
          ));
        } else if (i == 0 && type == 1) {
          temp.add(Text(
            "Correct Answers",
            style: TextStyle(
                fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold),
          ));
        }
        temp.add(Container(
            color: Colors.teal,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  _questionBank[t].questionText,
                  style:
                  TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Answer: ",
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      _questionBank[t].data[_questionBank[t].index - 1],
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                  child: Divider(
                    color: Colors.black,
                    height: 2,
                  ),
                )
              ],
            ))
          // new Text(+": "+_questionBank[t].data[_questionBank[t].index-1],style: TextStyle(fontSize: 20,backgroundColor: Colors.black38,color: Colors.white),)

        );
      }
    }
    return temp;
  }

  void reset() {
    _questionNumber = 0;
  }
}

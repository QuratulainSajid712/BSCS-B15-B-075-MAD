import 'dart:async';
import 'package:flutter/material.dart';
import 'quiz_brain1.dart';

class QuizApp2 extends StatelessWidget {
  int  index;//if you have multiple values add here
  QuizBrain quizBrain;
  int _value;
  // final List<int> selected_answer;
  QuizApp2(this.index,this.quizBrain,this._value, {Key key}): super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(title: Text("Undo Quiz"),),
      body: SafeArea(
          child: QuizPage2(index,quizBrain,_value)
      ),
    );
  }
}

class QuizPage2 extends StatefulWidget {
  int  index;
  QuizBrain quizBrain;
  int _value;

  QuizPage2(this.index,this.quizBrain,this._value, {Key key}): super(key: key);
  @override
  _QuizPageState2 createState() => _QuizPageState2();
}
int correct=0;
int wrong=0;
List<int> wrong_answers=[];

List<int> correct_answers=[];
class _QuizPageState2 extends State<QuizPage2>  {
  // DateTime alert;

  // @override

  List<Widget> scoreKeeper = [];


  List<Widget> _getList(BuildContext context,int index) {
    List<String> options= widget.quizBrain.getoptions_index(widget.index);
    // print(options.length);
    List<Widget> temp = [];
    int _value=widget._value;
    // _value=widget._value;

    for (var q = 1; q<=options.length; q++) {
      temp.add(
          ListTile(
              title:  Text(options[q-1],style: TextStyle(fontSize: 22,color: Colors.white),),
              leading: Transform.scale(
                scale: 2.0,
                child:    Radio(
                  hoverColor: Colors.indigo,

                  value: q,
                  groupValue: _value,
                  onChanged: (int value) {
                    checkAnswer(q,index);
                    setState(() {
                      _value = value;
                    });
                  },
                ),
              )

          )

      );
    }
    return temp;
  }
  void checkAnswer(int userPickedAnswer,int index) {
    int correctAnswer = widget.quizBrain.getCorrectAnswer_index(widget.index);
    if (userPickedAnswer == correctAnswer) {
      Navigator.pop(context,[true,widget.index]);
    } else {
      Navigator.pop(context,[false,widget.index]);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[

        TweenAnimationBuilder<Duration>(

            duration: Duration(seconds: 6),
            tween: Tween(begin: Duration(seconds: 6), end: Duration.zero),
            onEnd: () {

              // print('Timer ended');
              // quizBrain.reset();
              // quizBrain.shuffle();
              // scoreKeeper = [];

              Navigator.pop(context,[false,widget.index]);
            },
            builder: (BuildContext context, Duration value, Widget child) {
              var minutes = value.inMinutes;
              var seconds = value.inSeconds % 60;
              return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.alarm,color:Colors.red,size: 50,),
                      Text('$minutes:$seconds',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 50))
                    ],));
            }),

        Expanded(
          flex: 1,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                widget.quizBrain.getQuestionText_index(widget.index),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Column(
          children: _getList(context,widget.index),
        ),

        Row(
          children: scoreKeeper,
        ),
      ],
    );
  }
}
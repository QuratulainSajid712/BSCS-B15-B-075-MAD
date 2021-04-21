import 'dart:async';

import 'package:complete_quizapp/quizpage1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'maindrawer.dart';

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}
class _homepageState extends State<homepage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page" ,textAlign: TextAlign.center,),
      ),
      drawer: Drawer(
        child: MainDrawer(),
      ),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 100,),
            Padding(
                padding: EdgeInsets.all(10.0),
                child: Center(
                  child: Text(
                    'Quiz Time',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
          SizedBox(height:120 ,),
          Padding(
            padding: EdgeInsets.all(30.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.indigo,
              child: Text(
                'True / False',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                ),
              ),
              onPressed: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => QuizPage()));
              },
            ),
          ),
      Padding(
            padding: EdgeInsets.all(30.0),
            child: FlatButton(
              color: Colors.indigo,
              child: Text(
                'Multiple Choice',
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {

              },
            ),
          ),

      ],
        ),
    ),

    );
  }
}


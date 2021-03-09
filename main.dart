import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.start,
          //mainAxisAlignment: MainAxisAlignment.end,
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          crossAxisAlignment: CrossAxisAlignment.end,
          //crossAxisAlignment: CrossAxisAlignment.start,

          children: <Widget>[
          Container(
          color:Colors.lightBlueAccent,
          height: 100.0,
          //width: 100.0,
          child: Text("QuratulAIn"),

          ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              color:Colors.blue,
              height: 100.0,
             // width: 100.0,
              child: Text("QuratulAIn"),

            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              color:Colors.teal,
              height: 100.0,
             // width: 100.0,
              child: Text("QuratulAIn"),

            ),
            Container(
              width: double.infinity,
              height: 10.0,
              color: Colors.white,
            ),
          ],
        )
        ),
      ),

    );

}
}
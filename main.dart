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
        child: Container(
          color:Colors.lightBlueAccent,
          height: 100.0,
          width: 100.0,
          margin: EdgeInsets.all(50.0),
          padding: EdgeInsets.all(30.0),
          child: Text("QuratulAIn"),
        ),
        ),
      ),

    );

}
}
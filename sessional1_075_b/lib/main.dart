import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        //Here you can set what ever background color you need.
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
        child: Container(
        child: Column(
        children: <Widget>[
        Container(
        height: 330,
        decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage('images/1.jpg'),
    fit: BoxFit.fill
    )
    ),
    child: Stack(
    children: <Widget>[

    Positioned(
    left: 100,
    width: 100,
    height:300.0,
    child:  Container(

    decoration: BoxDecoration(
    image: DecorationImage(
      image: AssetImage('images/pic1.png',),
    )
    ),
    ),
    ),


    ],
    ),

    ),
      ],
    ),
    ),
    ),
      ),

          );

  }
}

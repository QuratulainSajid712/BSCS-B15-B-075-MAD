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
        body:SingleChildScrollView(
          child: Container(
            height: 160.0,
            child: Stack(
              children: <Widget>[
            Container(
            color: Colors.lightBlueAccent,
              width: 600,
              height: 2000.0,
              child: Center(
                child: Text(
                  "Home",
                  style: TextStyle(color: Colors.white, fontSize: 18.0),
                ),
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

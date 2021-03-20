import 'package:flutter/material.dart';

/*void main() {
  runApp(profilepage());
}*/
class profilepage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
        child: Container(
        child: Column(
        children: <Widget>[
        Container(
        height: 900,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/1.jpg'),
                fit: BoxFit.fill
            )
        ),

        child: Stack(
          children: <Widget>[
          Positioned(
          top: 10,
          right: 0.01,
          left: 0.01,

          height:320.0,
          child:  Container(

            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/pic3.png',),
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
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
        children: <Widget>[
          Container(
            color: Colors.white,
            padding: EdgeInsets.all(15.0),
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: Row(
              children: <Widget>[
                Icon(Icons.phone,
                color: Colors.teal,
                size: 30.0,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  '+923458478901',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ]
        ),
      ),
      ),
    );

}
}
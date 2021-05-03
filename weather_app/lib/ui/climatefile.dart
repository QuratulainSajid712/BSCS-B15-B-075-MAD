import 'package:flutter/material.dart';

class Climate extends StatefulWidget {
  @override
  _ClimateState createState() => _ClimateState();
}

class _ClimateState extends State<Climate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ClimateApp'),
        backgroundColor: Colors.red,
        actions: [
          IconButton(icon: Icon(Icons.menu),
              onPressed: ()=>print('Clicked'),
          )
        ],

      ),
      body: Stack(
          children: <Widget>[
      Center(
      child: Image(
          image: AssetImage('images/umbrella.png'),
      height: 1250.0,
      width: 600.0,
      fit: BoxFit.fill,
    ),
    ),
            Container(
              alignment: Alignment.topRight,
              margin: EdgeInsets.fromLTRB(0.0, 10.9, 20.9, 0.0),
              child: Text('Vehari',
                style: cityStyle(),
            ),
            ),
    ],
      ),
    );
  }
}

TextStyle cityStyle() {
  return TextStyle(
    color: Colors.white,
    fontSize: 22.9,
    fontStyle: FontStyle.italic,
  );
}

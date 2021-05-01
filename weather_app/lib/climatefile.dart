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
    );
  }
}

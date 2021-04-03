import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Text('Dicee'),
        backgroundColor: Colors.amberAccent,
      ),
      body: LudoPage(),
    ),
  ));
}
class LudoPage extends StatefulWidget {
  @override
  _LudoPageState createState() => _LudoPageState();
}

class _LudoPageState extends State<LudoPage>{
  @override
  Widget build(BuildContext context) {

  }
}


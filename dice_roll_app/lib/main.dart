import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar: AppBar(
        title: Text('Dicee'),
        backgroundColor: Colors.amberAccent,
      ),
      body: DicePage(),
    ),
  ));
}
class DicePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(

    );
  }
}


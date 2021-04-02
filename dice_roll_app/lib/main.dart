import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.amber,
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
    return Row(
      children: [
        Expanded(
            child: Image(image: new AssetImage('images/dice1.png')
            )
        ),
        Expanded(
            child: Image(image: new AssetImage('images/dice2.png')
            )
        ),

      ],

    );
  }
}


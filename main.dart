import 'package:flutter/cupertino.dart';
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
          mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            backgroundImage:AssetImage('images/IMG-20190329-WA0017.png') ,
            backgroundColor: Colors.white,
            radius: 100.0,
          ),
          Text(
            'Qurat-Ul-Ain Sajid',
              style: TextStyle(
                fontFamily: 'Pacifico',
                color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 30.0,

              ),
          ),
          Text(
            'CIIT/FA17-BCS-075/VHR',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 15.0,
              letterSpacing: 4.0,

            ),
          ),
          SizedBox(
            width: 600.0,
            height: 20.0,
            child: Divider(
                color:  Colors.white,
                thickness: 2.0
            ),
          ),
          Card(
            color: Colors.white,
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: ListTile(
              leading: Icon(Icons.phone,
                color: Colors.teal,
                size: 30.0,
              ),
              title: Text(
                '+923458790103',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Card(
            color: Colors.white,
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: ListTile(
              leading: Icon(Icons.email,
                color: Colors.teal,
                size: 30.0,
              ),

              title: Text(
                'quratulainsajid12@gmail.com',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ]
        ),
      ),
      ),
    );

}
}
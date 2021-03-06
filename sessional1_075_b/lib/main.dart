import 'package:flutter/material.dart';
import 'package:sessional1_075/chatpage.dart';
import 'package:sessional1_075/profileinfo.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => MyApp(),
      '/second': (context) => profilepage(),
      '/third': (context) =>  homepage(),
    },
  ));
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
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
      Container(
        height:310.0,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/pic3.png',),
                fit: BoxFit.fill
            )
        ),

      ),
    Positioned(
    left: 200,
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

    Positioned(
    left: 80,
    top: 250,
    child: Container(
    height: 280,
    width: 300,
    margin: EdgeInsets.symmetric(horizontal: 20),
  decoration: BoxDecoration(
    color: Colors.white,
boxShadow:[
  BoxShadow(
  color: Colors.black.withOpacity(0.3),
    blurRadius: 10,
  spreadRadius: 5,
),
],

  ),

      child: Column( children:[
        SizedBox(height: 50,),
        Container(
        width: 250,

        child: TextField(
          decoration: InputDecoration(
            labelText: "User Name",
            suffixIcon: Icon(Icons.email, size:17,
            ),
          ),
        ),
      ),
      Container(
        width: 250,
        child: TextField(
          decoration: InputDecoration(

            labelText: "Password",
            suffixIcon: Icon(Icons.remove_red_eye, size:17,
            ),
          ),

        ),
      ),

      SizedBox(height: 78,)    ,
      GestureDetector(
        child: Container(
          alignment: Alignment.center,
          width: 300,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFFF06292),
                Color(0xFFF48FB1),
                Color(0xFFF87121),
              ],

            ),

          ),
          child: Padding(
              padding: EdgeInsets.all(15.0),
            child: Text("Get Started",textAlign: TextAlign.left, style:TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold,color: Colors.white,)),
            ),
          ),
        )
],
    ),
        ),
    ),
    ],
    ),
        ),
          Text("Not Registered? Create Account.", style: TextStyle(fontSize:14,color: Colors.black,),),
        ],
    ),
      ),
    ),
      ),
          );
  }
}

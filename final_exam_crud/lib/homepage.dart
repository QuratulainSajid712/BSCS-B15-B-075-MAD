import 'dart:async';


import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'maindrawer.dart';

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}
class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CRUD APP",
            style: TextStyle(color: Colors.black)),
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        actions: [
          IconButton(
              icon: Icon(
                Icons.home,
                color:Colors.lightBlueAccent,
              ),
              onPressed: () async {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => homepage(),
                ));
              }),
        ],),
      drawer: Drawer(
        child: MainDrawer(),
      ),

    );
  }

}
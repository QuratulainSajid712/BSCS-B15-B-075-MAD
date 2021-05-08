import 'package:flutter/material.dart';
import 'dart:async';
import 'AppColors.dart';
import 'maindrawer.dart';
import 'Simplemode/simplepage.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TIC TAC TOE",
            style: TextStyle(color: AppColors.kPrimaryColor)),
        backgroundColor: AppColors.kWhiteColor,
        iconTheme: IconThemeData(color: AppColors.kPrimaryColor),
        centerTitle: true,
        actions: [
          IconButton(
              icon: Icon(
                Icons.home,
                color: AppColors.kPrimaryColor,
              ),
              onPressed: () async {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => Homepage(),
                ));
              }),
        ],),
      drawer: Drawer(
        child: MainDrawer(),
      ),
    body: SafeArea(
    child: Container(
    padding: EdgeInsets.symmetric(horizontal: 30),
    width: MediaQuery.of(context).size.width,
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
    GestureDetector(
    onTap: (){
    Navigator.push(context, MaterialPageRoute(
    builder: (context) => simplepage()) );
    },
    child: Container(
    width: MediaQuery.of(context).size.width,
    padding: EdgeInsets.symmetric(vertical: 12,horizontal: 30),
    decoration: BoxDecoration(
    color: AppColors.kPrimaryColor,
    borderRadius: BorderRadius.circular(24)
    ),
    child: Text("Simple", textAlign: TextAlign.center, style: TextStyle(
    color: AppColors.kWhiteColor,
    fontSize: 18
    ),),
    ),
    ),
    SizedBox(height: 20),
    GestureDetector(
    onTap: (){
    //Navigator.push(context, MaterialPageRoute(
    //builder: (context) => )
      // );
    },
    child: Container(
    width: MediaQuery.of(context).size.width,
    padding: EdgeInsets.symmetric(vertical: 12,horizontal: 30),
    decoration: BoxDecoration(
    color: AppColors.kPrimaryColor,
    borderRadius: BorderRadius.circular(24)
    ),
    child: Text("Hard", textAlign: TextAlign.center, style: TextStyle(
    color: AppColors.kWhiteColor,
    fontSize: 18
    ),),
    ),
    ),
    ],
    ),
    ),
    ),
    );
  }
}

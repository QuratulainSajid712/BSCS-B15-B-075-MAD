import 'package:flutter/material.dart';
import 'maindrawer.dart';

class contactus extends StatefulWidget {
  @override
  _contactusState createState() => _contactusState();
}
class _contactusState extends State<contactus> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("Home Page" ,textAlign: TextAlign.center,),
    ),
    drawer: Drawer(
    child: MainDrawer(),
    ),
    );
  }
}
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
        title: Text("Home Page"),
      ),
      drawer: Drawer(
        child: MainDrawer(),
      ),

    );
  }
}


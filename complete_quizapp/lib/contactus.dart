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
      backgroundColor: Colors.indigo,
        appBar: AppBar(
        title: Text("Contact Us" ,textAlign: TextAlign.center,),
    ),
    drawer: Drawer(
    child: MainDrawer(),
    ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              backgroundImage:AssetImage('images/quiz.png') ,
              backgroundColor: Colors.white,
              radius: 100.0,
            ),
            Text(
              'Qurat-Ul-Ain Sajid',
              style: TextStyle(
                fontFamily: 'Pacifico',
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30.0,

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
            ListTile(
              onTap: () {
              },
              leading: Icon(
                Icons.mail,
                color: Colors.white,
              ),
              title: Text(" quratulainsajid12@gmail.com",textAlign: TextAlign.center, style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                letterSpacing: 4.0,

              ),),
            ),
            ListTile(
              onTap: () {
              },
              leading: Icon(
                Icons.phone,
                color: Colors.white,
              ),
              title: Text("+92335XXXXXXX",textAlign: TextAlign.center, style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                letterSpacing: 4.0,

              ),),
            ),

          ],
        ),
      ),
    );
  }
}
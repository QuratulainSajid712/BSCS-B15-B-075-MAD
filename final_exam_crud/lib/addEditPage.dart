import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

import 'homepage.dart';
import 'maindrawer.dart';

class AddEditPage extends StatefulWidget {
  final List list;
  final int index;
  AddEditPage({this.list,this.index});
  @override
  _AddEditPageState createState() => _AddEditPageState();
}

class _AddEditPageState extends State<AddEditPage> {

  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController address = TextEditingController();

  bool editMode = false;


  addUpdateData(){
    if(editMode){
      var url = Uri.parse('http://192.168.10.2/final-exam/edit.php');
      http.post(url, body: {
        'id' : widget.list[widget.index]['id'],
        'name' : name.text,
        'email' : email.text,
        'phone' : phone.text,
        'address' : address.text,
      });
    }else{
      var url = Uri.parse('http://192.168.10.2/final-exam/addcontact.php');
      http.post( url,body: {
        'name' : name.text,
        'email' : email.text,
        'phone' : phone.text,
        'address' : address.text,
      });
    }

  }


  @override
  void initState() {
    super.initState();
    if(widget.index != null){
      editMode = true;
      name.text = widget.list[widget.index]['name'];
      email.text = widget.list[widget.index]['email'];
      phone.text = widget.list[widget.index]['phone'];
      address.text = widget.list[widget.index]['address'];
    }

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(editMode ? 'Update' :'Add Data' ,
          style: TextStyle(color: Colors.white)),
      iconTheme: IconThemeData(color: Colors.white),
      centerTitle: true,
      actions: [
        IconButton(
            icon: Icon(
              Icons.home,
              color:Colors.white,
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
      body: ListView(
        children: <Widget>[

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: name,
              decoration: InputDecoration(
                labelText: ' Name',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: email,
              decoration: InputDecoration(
                labelText: 'E-mail',
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: phone,
              decoration: InputDecoration(
                labelText: 'Phone',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: address,
              decoration: InputDecoration(
                labelText: 'Address',
              ),
            ),
          ),

          Padding(padding: EdgeInsets.all(8),
            child: RaisedButton(
              onPressed: (){
                setState(() {
                  addUpdateData();
                });
                Navigator.push(context, MaterialPageRoute(builder: (context) => homepage(),),);
                debugPrint('Clicked RaisedButton Button');
              },
              color: Colors.amber,
              child: Text(editMode ? 'Update' :'Save',style: TextStyle(color: Colors.black),),
            ),
          ),
        ],
      ),
    );
  }
}
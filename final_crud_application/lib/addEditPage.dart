import 'dart:convert';
import 'package:final_crud_application/main.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

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
  TextEditingController skill = TextEditingController();
  TextEditingController bloodgroup = TextEditingController();
  TextEditingController address = TextEditingController();

  bool editMode = false;


  addUpdateData(){
    if(editMode){
      var url = Uri.parse('http://192.168.10.4/flutter-crud-app/edit.php');
      http.post( url, body: {
        'id' : widget.list[widget.index]['id'],
        'name' : name.text,
        'email' : email.text,
        'phone' : phone.text,
        'skill' : skill.text,
        'bloodgroup' : bloodgroup.text,
        'address' : address.text,
      });
    }else{
      var url = Uri.parse('http://192.168.10.4/flutter-crud-app/addcontact.php');
      http.post( url,body: {
        'name' : name.text,
        'email' : email.text,
        'phone' : phone.text,
        'skill' : skill.text,
        'bloodgroup' : bloodgroup.text,
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
      skill.text = widget.list[widget.index]['skill'];
      bloodgroup.text = widget.list[widget.index]['bloodgroup'];
      address.text = widget.list[widget.index]['address'];
    }

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(editMode ? 'Update' :'Add Data'),),
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
              controller: skill,
              decoration: InputDecoration(
                labelText: 'Skill',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: bloodgroup,
              decoration: InputDecoration(
                labelText: 'Blood Group',
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
                Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage(),),);
                debugPrint('Clicked RaisedButton Button');
              },
              color: Colors.blue,
              child: Text(editMode ? 'Update' :'Save',style: TextStyle(color: Colors.white),),
            ),
          ),
        ],
      ),
    );
  }
}

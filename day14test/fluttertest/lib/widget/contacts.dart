import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SLContacts extends StatelessWidget{
  final List<String> _names;
  SLContacts(this._names);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("联系人列表"),
      ),
      body: ListView(
        children: _names.map((name){
          return ListTile(
            leading: Icon(Icons.people),
            title: Text(name),
          );
        }).toList(),
      ),
    );
  }
}
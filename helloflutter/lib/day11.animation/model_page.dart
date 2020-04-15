import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SLModalPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text("Modal Page"),
      ),
      body: Center(
        child: Text("Modal Page"),
      ),
    );
  }
}
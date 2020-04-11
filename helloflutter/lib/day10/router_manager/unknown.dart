import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SLUnknownPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("错误页面"),
      ),
      body: Center(
        child: Text("错误页面",style: TextStyle(fontSize: 20,color: Colors.red),),
      ),
    );
  }
}
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helloflutter/douban/pages/main/initialize_items.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,splashColor: Colors.transparent
      ),
      home: SLHomePage(),
    );
  }
}

class SLHomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SLHomePageState();
  }
}

class _SLHomePageState extends State<SLHomePage>{
  final List<String> names = ["aaaa","bbbb","cccc"];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("列表测试"),
      ),
      body: ListView(
        children: names.map((item){
          return ListItemLess(item);
        }).toList(),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.delete),
        onPressed: (){
          setState(() {
            names.removeAt(0);
          });
        },
      ),
    );
  }

}


class ListItemLess extends StatelessWidget{
  final String name;
  final Color randClor = Color.fromARGB(255, Random().nextInt(256), Random().nextInt(256), Random().nextInt(256));
  ListItemLess(this.name);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Text(name),
      height: 80,
      color: randClor,
    );
  }

}

class ListItemFul extends StatefulWidget{
  final String name;
  ListItemFul(this.name,{Key key}):super(key:key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ListItemFulState();
  }
}

class _ListItemFulState extends State<ListItemFul>{
  final Color randClor = Color.fromARGB(255, Random().nextInt(256), Random().nextInt(256), Random().nextInt(256));
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Text(widget.name,style: TextStyle(color: Colors.white,fontSize: 30),),
      height: 80,
      color: randClor,
    );
  }
}
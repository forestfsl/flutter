import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => runApp(MyAPP());

class MyAPP extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,splashColor: Colors.transparent),
      home:SLHomePage() ,
      );
  }
}

class SLHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("列表测试"),
      ),
      body: Container(
        height: 300,
        child: ListView.separated(
            itemBuilder: (BuildContext ctx,int index){
          return Text(
            "Hello World:$index",
            style: TextStyle(fontSize: 20),
          );
        },
            separatorBuilder: (BuildContext ctx,int index){
              return Divider(
                color: Colors.red,
                height: 30,
                indent: 30,
                endIndent: 30,
                thickness: 10,
              );
            }, itemCount: 100),
      ),
    );
  }
}
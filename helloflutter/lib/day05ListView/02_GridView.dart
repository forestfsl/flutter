import 'dart:math';

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
      body:SLHomeContent() ,
    );
  }
}


class SLHomeContent extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SLHomeContentState();
  }
}

class _SLHomeContentState extends State<SLHomeContent>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: .8,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8
        ),
        children:List.generate(100, (index){
          return Container(
            color: Color.fromARGB(255, Random().nextInt(256), Random().nextInt(256), Random().nextInt(256)),
          );
        })
    );
  }
}

class GridViewDemo2 extends StatelessWidget {
  const GridViewDemo2({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 400,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          childAspectRatio: 1.8
      ),
      children: List.generate(100, (index){
        return Container(
          color: Color.fromARGB(255, Random().nextInt(256), Random().nextInt(256), Random().nextInt(256)),
        );
      }),
    );
  }
}

class PaddingDemo extends StatelessWidget {
  const PaddingDemo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0),
      child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8
      ), itemBuilder: (BuildContext ctx,int index){
        return Container(
          color: Color.fromARGB(255, Random().nextInt(256), Random().nextInt(256), Random().nextInt(256)),
        );
      }),
    );
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  //build
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:HYHomePage() ,
    );
  }
}

class HYHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("第二个Flutter程序"),
      ),
      body: HYContentBody(),
    );
  }
}

class HYContentBody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Text(
        "Hello World",
        style: TextStyle(
            fontSize: 40,
            color: Colors.orange
        ),
      ),
    );
  }
}
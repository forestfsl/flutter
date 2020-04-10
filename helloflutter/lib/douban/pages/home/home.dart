import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home_content.dart';
//https://api.douban.com/v2/movie/top250?start=0&count=20&apikey=0df993c66c0c636e29ecbb5344252a4a
class SLHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("首页"),
      ),
      body: SLHomeContent(),
    );
  }
}
import 'package:favorcate/ui/pages/favor/favor_content.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SLFavorScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("我的收藏"),
      ),
      body: SLFavorContent(),
    );
  }
}
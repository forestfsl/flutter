import 'package:favorcate/ui/pages/fliter/fliter_content.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SLFliterScreen extends StatelessWidget{
  static const String routeName = "/fliter";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("美食过滤"),
      ),
      body: SLFliterContent(),
    );
  }
}
import 'package:favorcate/ui/pages/home/home_app_bar.dart';
import 'package:favorcate/ui/pages/home/home_content.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SLHomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: SLHomeAppBar(context) ,
      body: SLHomeContent(),
    );
  }
}
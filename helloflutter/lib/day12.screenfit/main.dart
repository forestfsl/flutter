import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helloflutter/day12.screenfit/shared/size_fit.dart';
import './extension/double_extension.dart';
import './extension/int_extension.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    SLSizeFit.initialize();
    // TODO: implement build
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,splashColor: Colors.transparent),
      home: SLHomePage(),
    );
  }
}


class SLHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //2.手机屏幕的大小(逻辑分辨率)
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final statusHeight = MediaQuery.of(context).padding.top;
    print("屏幕宽高:$width * $height");
    print("状态栏的高度:$statusHeight");
    print(SLSizeFit.screenWidth);

    print(200.px);
    print(400.rpx);

    return Scaffold(
      appBar: AppBar(
        title: Text("首页"),
      ),
      body: Center(
        child: Container(
          width: 200.px,
          height: 200.px,
          color: Colors.red,
          alignment: Alignment.center,
          child: Text("Hello World",style: TextStyle(fontSize: 20.px),),
        ),
      ),
    );
  }
}
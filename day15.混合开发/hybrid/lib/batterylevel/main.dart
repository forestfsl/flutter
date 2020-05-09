import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() =>runApp(MyApp());

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
  static const platform = const MethodChannel("forest.com/battery");
  int _level = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("首页"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text("获取剩余电量"),
              onPressed: getBatteryInfo,
            ),
            Text("当前电量:$_level")
          ],
        ),
      ),
    );
  }

  void getBatteryInfo() async {
    final result = await platform.invokeMethod("getBatteryInfo");
    setState(() {
      _level = result;
    });
  }
}
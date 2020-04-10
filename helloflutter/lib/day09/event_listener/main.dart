//1.创建全局的EventBus对象
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helloflutter/day09/event_listener/event_bus.dart';

class UserInfo{
  String nickname;
  int level;

  UserInfo(this.nickname,this.level);
}

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

class SLHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("列表测试"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SLButton(),
            SLText()
          ],
        ),
      ),
    );
  }
}

class SLButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
      child: Text("按钮"),
      onPressed: () {
        //2.发出事件
        final info = UserInfo("forest",29);
        eventBus.fire(info);
      },
    );
  }
}

class SLText extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SLTextState();
  }
}

class _SLTextState extends State<SLText>{
  String _message = "Hello World";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //3.监听事件的类型
    eventBus.on<UserInfo>().listen((data){
      print(data.nickname);
      print(data.level);
      setState(() {
        _message = "${data.nickname}-${data.level}";
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(_message,style: TextStyle(fontSize: 20),);
  }
}
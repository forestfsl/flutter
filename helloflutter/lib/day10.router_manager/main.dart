import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helloflutter/day10.router_manager/about.dart';
import 'package:helloflutter/day10.router_manager/routers.dart';

import 'detail.dart';

void main() =>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,splashColor: Colors.transparent),
      routes: SLRouter.routes,
      initialRoute: SLRouter.initialRoute,
      onGenerateRoute: SLRouter.generateRoute,
      onUnknownRoute: SLRouter.unknowRoute,
      );
  }
}

class SLHomePage extends StatefulWidget{
  static const String routeName = "/";
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SLHomePageState();
  }
}

class _SLHomePageState extends State<SLHomePage>{
  String _homeMessage = "default message";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("首页"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(_homeMessage,style: TextStyle(fontSize: 20,color: Colors.red),),
            RaisedButton(
              child: Text("跳转到详情"),
              onPressed: () => _jumpToDetail(context),
            ),
            RaisedButton(
              child: Text("跳转到关于"),
              onPressed: () => _jumpToAbout(context),
            ),
            RaisedButton(
              child: Text("跳转到详情"),
              onPressed: () => _jumpToDetail2(context),
            ),     RaisedButton(
              child: Text("跳转到设置"),
              onPressed: () => _jumpToSettings(context),
            )
          ],
        ),
      ),
    );
  }
  void _jumpToDetail(BuildContext context){
    //1.普通的跳转方式
    //传递参数：通过构造器直接传参即可
    Future result = Navigator.of(context).push(MaterialPageRoute(
        builder: (ctx) {
          return SLDetailPage("a home message");
        }
    ));

    result.then((res){
      setState((){
        _homeMessage = res;
      });
    });
}

 void _jumpToAbout(BuildContext context){
    Navigator.of(context).pushNamed(SLAboutPage.routeName,arguments: "a home message");
 }

 void _jumpToDetail2(BuildContext context){
    Navigator.of(context).pushNamed(SLDetailPage.routeName,arguments: "a home detail2 message");
 }

 void _jumpToSettings(BuildContext context){
   Navigator.of(context).pushNamed("/aaaa");
 }

}
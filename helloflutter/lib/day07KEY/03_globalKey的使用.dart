import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue,splashColor: Colors.transparent),
      home: SLHomePage(),
    );
  }
}

class SLHomePage extends StatelessWidget{
  final String title = "列表测试";
  final GlobalKey<_SLHomeContentState> homeKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SLHomeContent(key: homeKey),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.gesture),
        onPressed: (){
          print(homeKey.currentState.message);
          print(homeKey.currentState.widget.name);
          homeKey.currentState.test();
        },
      ),
    );
  }
}

class SLHomeContent extends StatefulWidget{
  final String name = "forest";

  SLHomeContent({Key key}) : super(key:key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SLHomeContentState();
  }
}

class _SLHomeContentState extends State<SLHomeContent>{
  final String message = "123";
  void test() {
    print("test");
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(message);
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: HYHomeDemo(),
    );
  }
}

class HYHomeDemo extends StatefulWidget {
@override
  State<StatefulWidget> createState() => _HYHomeDemoState();
}

class _HYHomeDemoState extends State<HYHomeDemo>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    print("build");
    return Scaffold(
      appBar: AppBar(
        title: Text("商品列表"),
      ),
      body: Column(
        children: <Widget>[
          HYHomeContent()
        ],
      ),
      floatingActionButton: RaisedButton(
        child: Icon(Icons.add),
        onPressed: (){
          setState(() {

          });
        },
      ),
    );
  }
}

class HYHomeContent extends StatefulWidget{
  HYHomeContent(){
    print("1.调用HYHomeContent的construct方法");
  }
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    print("2.调用HYHomeContent的createState方法");
    return _HYHomeContentState();
  }
}

class _HYHomeContentState extends State<HYHomeContent>{
  int _counter = 0;
  _HYHomeContentState(){
    print("3.调用——HYHomeContentState的constructor方法");
  }
  @override
  void initState() {
    // TODO: implement initState
    final TextStyle style = TextStyle();
    super.initState();
    print("4.调用_HYHomeContentState的initState方法");
  }
  @override
  void didUpdateWidget(HYHomeContent oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print("didUpdateWidget");
  }
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print("5.调用_HYHomeContentState的build方法");
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    print("5.调用_HYHomeContentState的build方法");
    return Column(
      children: <Widget>[
        RaisedButton(
          child: Icon(Icons.add),
          onPressed: () {
            setState(() {
              _counter++;
            });
          },
        ),
        Text("数字:$_counter")
      ],
    );
  }
}


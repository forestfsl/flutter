import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: HYHomePage(),
    );
  }
}

class HYHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("商品列表"),
      ),
      body: HYHomeContent("你好啊，冯宋林"),
    );
  }
}

class HYHomeContent extends StatefulWidget{
  final String message;
  HYHomeContent(this.message);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HYHomeContentState();
  }

}

class _HYHomeContentState extends State<HYHomeContent>{
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _getButtons(),
          Text("当前计数:$_counter",style: TextStyle(fontSize: 25)),
          Text("传递的信息:${widget.message}")
        ],
      ),
    );
  }

  Widget _getButtons(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          child: Text("+",style: TextStyle(fontSize: 20,color: Colors.white)),
          color: Colors.pink,
          onPressed: (){
            setState((){
              _counter++;
            });
          },
        ),
        RaisedButton(
          child: Text("-",style: TextStyle(fontSize: 20,color: Colors.white)),
          color: Colors.purple,
          onPressed: (){
            setState((){
              _counter--;
            });
          },
        )
      ],
    );
  }
}

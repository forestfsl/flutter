import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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

class HYHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      appBar: AppBar(
        title: Text("基础Widget"),
      ),
      body:HYHomeContent(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => print("FloatingActionButton Click"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class HYHomeContent extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HYHomeContentState();
  }
}

class _HYHomeContentState extends State<HYHomeContent>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
      color: Colors.red,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Icon(Icons.bug_report),Text("bug报告")
        ],
      ),
      onPressed: () => print("按钮被点击了"),
    );
  }
}

class RowDemo1 extends StatelessWidget {
  const RowDemo1({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.baseline,
        mainAxisSize: MainAxisSize.max,
        textBaseline: TextBaseline.ideographic,//这个属性需要结合crossAxisAlignment的baseline属性才生效
        children: <Widget>[
          Container(
            width: 80,
            height: 60,
            color: Colors.red,
            child: Text(
              "Hellxo",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
            width: 120,
            height: 100,
            color: Colors.green,
            child: Text(
              "Woxrld",
              style: TextStyle(fontSize: 30),
            ),
          ),
          Container(
            width: 90,
            height: 80,
            color: Colors.blue,
            child: Text(
              "abce",
              style: TextStyle(fontSize: 12),
            ),
          ),
          Container(
            width: 50,
            height: 120,
            color: Colors.orange,
            child: Text(
              "csba",
              style: TextStyle(fontSize: 40),
            ),
          )
        ],
      ),
    );
  }
}

class ColumnDemo extends StatelessWidget {
  const ColumnDemo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
//      crossAxisAlignment: CrossAxisAlignment.center,
      textBaseline: TextBaseline.alphabetic,
      verticalDirection: VerticalDirection.down,
      mainAxisSize: MainAxisSize.min,//这个属性会影响spaceBetween
      children: <Widget>[
        Container(
          width: 80,
          height: 60,
          color: Colors.red,
          child: Text(
            "Hello",
            style: TextStyle(fontSize: 20),
          ),
        ),
        Container(
          width: 120,
          height:100,
          color: Colors.green,
          child: Text(
            "World",
            style: TextStyle(fontSize: 30),
          ),
        ),
        Container(
          width: 90,
          height: 80,
          color: Colors.blue,
          child: Text(
            "abxc",
            style: TextStyle(fontSize: 12),
          ),
        ),
        Container(
          width: 50,
          height: 120,
          color: Colors.orange,
          child: Text(
            "cxba",
            style: TextStyle(fontSize: 40),
          ),
        )
      ],
    );
  }
}

class ExpandedDemo extends StatelessWidget {
  const ExpandedDemo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
//        https://www.cnblogs.com/holy-loki/archive/2018/10/06/9735056.html
//        alphabetic：对齐字符底部的水平线；
//        ideographic：对齐表意字符的水平线。
        textBaseline: TextBaseline.alphabetic,
        children: <Widget>[
          /*
          Flexible 中的属性
          - flex
          Expanded(更多) -> Flexible(fit:FlexFit.tight)
           */
          Expanded(child: Container(height: 60,color: Colors.red)),
          Expanded(
            flex: 2,
            child: Container(width: 1000,height: 100,color: Colors.green),
          ),
          Container(width: 90,height: 80,color: Colors.blue),
          Container(width: 50,height: 120,color: Colors.orange)
        ],
      ),
    );
  }
}

class StackDemo1 extends StatelessWidget {
  const StackDemo1({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomStart,
//      fit: StackFit.expand, 拉伸到尽可能大
      fit: StackFit.passthrough,
      overflow: Overflow.visible,//超出父控件的也能显示
      children: <Widget>[
        Image.asset("assets/images/juren.jpeg",
            width: 300,
            fit: BoxFit.cover),
        Positioned(
          left: 20,
          bottom: -50,
          child: Container(
            width: 150,
            height: 150,
            color: Colors.red,
          ),
        ),
        Positioned(
          right: 10,
          bottom: 20,
          child: Text(
            "进击的巨人",
            style: TextStyle(fontSize: 20,color: Colors.green),
          ),
        )
      ],
    );
  }
}

class RowDemo2 extends StatelessWidget{
  const RowDemo2({
    Key key,
  }):super(key:key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    /*
    Stack 默认的大小是包裹内容的
    - alignment：从什么位置开始排布所有的子Widget
    - fit:expandf(很少) 将子元素拉伸到尽可能大
    - overflow：超出部分如何处理
     */
    return Stack(
      children: <Widget>[
        Image.asset("assets/images/juren.jpeg"),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("进击的巨人挺不错的",style: TextStyle(fontSize: 20,color: Colors.white)),
                IconButton(
                  icon: Icon(
                    Icons.favorite,
                    color: Colors.white,
                  ),
                  onPressed: () => print("点击了收藏"),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
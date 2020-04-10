import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,splashColor: Colors.transparent
      ),
      home: SLHomepage(),
    );
  }
}

class SLHomepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("列表测试"),
      ),
      body: Center(
        child: ListenerDemo(),
      ),
    );
  }
}

class ListenerDemo extends StatelessWidget {
  const ListenerDemo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerDown: (event){
        print("指针按下：$event");
        print(event.position);
        print(event.localPosition);
      },
      onPointerMove: (event){
        print("指针移动:$event");
      },
      onPointerUp: (event){
        print("指针抬起:$event");
      },
      child: Container(
        width: 200,
        height: 200,
        color: Colors.red,
      ),
    );
  }
}

class GestureDemo2 extends StatelessWidget {
  const GestureDemo2({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details){
        print("手指按下");
        print(details.globalPosition);
        print(details.localPosition);
      },
      onTapUp: (details){
        print("手指抬起");
      },
      onTapCancel: () {
        print("手势取消");
      },
      onTap: (){
        print("手势点击");
      },
      onDoubleTap: (){
        print("手指双击");
      },
      onLongPress: (){
        print("长按双击");
      },
      child: Container(
        width: 200,
        height: 200,
        color: Colors.orange,
      ),
    );
  }
}


//IgnorePointer 忽略掉内部的点击事件，传出去
class GestureDemo extends StatelessWidget {
  const GestureDemo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        GestureDetector(
          onTapDown: (details){
            print("outer click");
          },
          child: Container(
            width:200,
            height: 200,
            color: Colors.yellow,
            alignment: Alignment.center,
          ),
        ),
        IgnorePointer(
          child: GestureDetector(
            child: GestureDetector(
              onTapDown: (details){
                print("inner click");
              },
             child: Container(
               width: 100,
               height: 100,
               color: Colors.red,
             ),
            ),
          ),
        )

      ],
    );
  }
}
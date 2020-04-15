import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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

class SLHomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SLHomePageState();
  }
}


class _SLHomePageState extends State<SLHomePage> with SingleTickerProviderStateMixin{

   AnimationController _controller;
   Animation _animation;
   Animation _sizeAnim;
   Animation _colorAnim;
   Animation _opacityAnim;
   Animation _radiansAnim;

   @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //1.创建AnimationController
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2)
    );

    //2.设置Curve的值
     _animation = CurvedAnimation(parent: _controller,curve: Curves.linear);

     //3.Tween
     //3.1创建size的tween
     _sizeAnim = Tween(begin: 10.0,end:200.0).animate(_controller);
     //3.2创建color的tween
     _colorAnim = ColorTween(begin: Colors.orange,end: Colors.purple).animate(_controller);
     //3.3创建opacity的tween
     _opacityAnim = Tween(begin: 0.0,end: 1.0).animate(_controller);
     //3.4创建radians的tween
     _radiansAnim = Tween(begin: 0.0,end: 2 * pi).animate(_controller);

     //监听动画的状态改变
     _controller.addStatusListener((status){
       if(status == AnimationStatus.completed){
         _controller.reverse();
       }else if (status == AnimationStatus.dismissed){
         _controller.forward();
       }
     });
  }

  @override
  Widget build(BuildContext context) {
     print("执行_SLHomePageState的build方法");
    // TODO: implement build
     //1.大小变化动画
     //2.颜色变化动画
     //3.透明变化动画
    return Scaffold(
      appBar: AppBar(
        title: Text("首页"),
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          builder: (ctx,child){
            return Opacity(
              opacity: _opacityAnim.value,
              child: Transform(
                transform: Matrix4.rotationZ(_radiansAnim.value),
                alignment: Alignment.center,
                child: Container(
                  width: _sizeAnim.value,
                  height: _sizeAnim.value,
                  color: _colorAnim.value,
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        onPressed: () {
          if(_controller.isAnimating){
            _controller.stop();
            print(_controller.status);
          }else if(_controller.status == AnimationStatus.forward){
            _controller.forward();
          }else if(_controller.status == AnimationStatus.reverse){
            _controller.reverse();
          }else{
            _controller.forward();
          }
        },
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}
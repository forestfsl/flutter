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
        primarySwatch: Colors.blue,splashColor: Colors.transparent),
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
  //创建AnimationController
  AnimationController _controller;
  Animation _animation;
  Animation _sizeAnim;

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
    _sizeAnim = Tween(begin: 50.0,end: 150.0).animate(_animation);


    //监听动画的状态改变
    _controller.addStatusListener((status){
      if(status == AnimationStatus.completed){
        _controller.reverse();
      }else if(status == AnimationStatus.dismissed){
        _controller.forward();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    print("执行_SLHomePageState的build方法");
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("首页"),
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          builder: (ctx,child){
            return Icon(Icons.favorite,color: Colors.red,size: _sizeAnim.value,);
          }
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
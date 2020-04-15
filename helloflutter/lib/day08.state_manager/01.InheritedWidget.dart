import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helloflutter/douban/pages/model/home_model.dart';

void main() => runApp(MyApp());

class UserInfo{
  String name;
  int age;
}

class SLCounterWidget extends InheritedWidget{
  //1.共享的数据
  final int counter;

  //2.定义构造方法
  SLCounterWidget({this.counter,Widget child}): super(child:child);

  //3获取组件最近的当前InheritdayedWidget
  static SLCounterWidget of(BuildContext context){
    //沿着Element树，去到最近的SLCounterElement，从Element中取出Widget对象
    return context.dependOnInheritedWidgetOfExactType();
  }
  //4.决定要不要回调State中的didChangeDependencies
  //如果返回true：执行以来当前的InheritedWidget的State中的didChangeDependencies
@override
  bool updateShouldNotify(SLCounterWidget oldWidget) {
    // TODO: implement updateShouldNotify
    return oldWidget.counter != counter;
  }
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,splashColor: Colors.transparent
      ),
      home:SLHomePage() ,
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
  int _counter = 100;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("InheritedWidget"),
      ),
      body: SLCounterWidget(
        counter: _counter,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SLShowData01(),
              SLShowData02()
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            _counter++;
          });
        },
      ),
    );
  }
}

class SLShowData01 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SLShowData01State();
  }
}

class _SLShowData01State extends State<SLShowData01>{
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print("执行了—_SLShowData01State中的didChangeDepedencies");
  }
  @override
  Widget build(BuildContext context) {
    int counter = SLCounterWidget.of(context).counter;
    // TODO: implement build
    return Card(
      color: Colors.red,
      child: Text("当前计数: $counter", style: TextStyle(fontSize: 30),),
    );
  }
}

class SLShowData02 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int counter = SLCounterWidget.of(context).counter;

    return Container(
      color: Colors.blue,
      child: Text("当前计数: $counter", style: TextStyle(fontSize: 30),),
    );
  }
}


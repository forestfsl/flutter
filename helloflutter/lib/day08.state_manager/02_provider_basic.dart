/*
1.创建自己需要共享的数据
2.在应用程序的顶层ChangeNotifierProvider
3.在其他位置使用共享的数据
>Provider.of:当Provider的数据发生变化时，Provider.of 所在的Widget整个build方法都会重新构建
>Cousumer(相对推荐)：当Provider中的数据发生改变时，执行重新执行Consumer的builder
>Selector:1.selector方法（作用：对原有的数据进行转换),2.shouldRebuild(作用：要不要重新构建）
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helloflutter/day04%E5%B8%83%E5%B1%80/01_button-image-icon.dart';
import 'package:helloflutter/day08.state_manager/viewmodel/counter_view_model.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(
    //2.在应用程序的顶层ChangeNotifierProvider
    ChangeNotifierProvider(
     create: (BuildContext context) => SLCounterViewMode(),
      child: Myapp(),
    )
  );
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
            SLShowData01(),
            SLShowData02()
          ],
        ),
      ),
      floatingActionButton: Selector<SLCounterViewMode,SLCounterViewMode>(
        selector: (ctx, counterVM) => counterVM,
        shouldRebuild: (pre,next) => false,
        builder: (ctx,counterVM,child){
          print("floatingActionButton build 方法被执行");
          return FloatingActionButton(
            child: child,
            onPressed: () {
              counterVM.counter += 1;
            },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class SLShowData01 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    //3.在其他位置使用共享的数据
    int counter = Provider.of<SLCounterViewMode>(context).counter;
    print("data01的buid方法");
    return Container(
      color: Colors.blue,
      child: Column(
        children: <Widget>[
          Text("当前计数：$counter",style: TextStyle(fontSize: 30),)
        ],
      ),
    );
  }
}

class SLShowData02 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    print("data02的build方法");

    return Container(
      color: Colors.red,
      child: Consumer<SLCounterViewMode>(
        builder: (ctx, counterVM, child) {
          print("data02 Consumer build方法被执行");
          return Text("当前计数: ${counterVM.counter}", style: TextStyle(fontSize: 30),);
        },
      ),
    );
  }
}
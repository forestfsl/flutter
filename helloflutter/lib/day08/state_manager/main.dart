import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helloflutter/day08/state_manager/viewmodel/counter_view_model.dart';
import 'package:helloflutter/day08/state_manager/viewmodel/initialize_providers.dart';
import 'package:helloflutter/day08/state_manager/viewmodel/user_view_model.dart';
import 'package:provider/provider.dart';


//  runApp(
//    // 2.在应用程序的顶层ChangeNotifierProvider
//    ChangeNotifierProvider(
//      create: (ctx) => HYCounterViewModel(),
//      child: ChangeNotifierProvider(
//        create: (ctx) => HYUserViewModel(userInfo),
//        child: MyApp(),
//      ),
//    )
//  );
void main() {
  runApp(MultiProvider(
    providers: providers,
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
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

class SLHomePage extends StatelessWidget {
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
            SLShowData02(),
            SLShowData03()
          ],
        ),
      ),
      floatingActionButton: Selector<SLCounterViewMode,SLCounterViewMode>(
        selector: (ctx,counterVM) => counterVM,
        shouldRebuild: (pre,next) => false,
        builder: (ctx,counterVM,child){
          print("floatingActionButton build方法被执行");
          return FloatingActionButton(
            child: child,
            onPressed: (){
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
    // TODO: implement build
    //在其他位置使用共享的数据
    int counter = Provider.of<SLCounterViewMode>(context).counter;
    print("data01的build方法");
    return Container(
      color: Colors.blue,
      child: Column(
        children: <Widget>[
          Text("当前计数:$counter",style: TextStyle(fontSize: 30),),
        ],
      ),
    );
  }
}

class SLShowData02 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    print("data02的build方法");
    return Container(
      color: Colors.red,
      child: Consumer<SLCounterViewMode>(
        builder: (ctx,counterVM,child){
          print("data02 Consumer build 方法被执行");
          return Text("当前计数：${counterVM.counter}",style: TextStyle(fontSize: 30),);
        },
      ),
    );
  }
}

class SLShowData03 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Consumer2<SLUserViewModel, SLCounterViewMode>(
      builder: (ctx, userVM, counterVM, child) {
        return Text(
          "nickname:${userVM.user.nickname} counter:${counterVM.counter}",
          style: TextStyle(fontSize: 30),
        );
      },
    );
  }
}
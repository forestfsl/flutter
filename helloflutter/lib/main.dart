import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:helloflutter/service/http_request.dart';

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

class SLHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("列表测试"),
      ),
      body: SLHomeContent(),
    );
  }
}

class SLHomeContent extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SLHomeContentState();
  }
}

class _SLHomeContentState extends State<SLHomeContent>{
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    //发送网络请求
    //1.创建Dio对象
    final dio = Dio();

//     2.发送网络请求
    dio.get("https://httpbin.org/get").then((res) {
      print(res);
    });

    dio.post("https://httpbin.org/post").then((res) {
      print(res);
    });

    HttpRequest.request("/get",params: {"name":"why"})
    .then((res){
      print(res);
    }).catchError((err){});

    runCalc();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container();
  }

  void runCalc() async {
    var result = await compute(calc, 100);
    print("-----: $result");
  }


}

int calc(int count){
  int total = 0;
  print(count);
  for (int i = 0; i < count; i++) {
    total += i;
  }
  return total;
}
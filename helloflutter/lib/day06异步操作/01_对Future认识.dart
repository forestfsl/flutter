import 'dart:io';

main(List<String>args){

  print("main start");
  //发送一个网络起请求
  var future = getNetworkData();
  //2.拿到结果(如果没有指定类型，就是天蝎dynamic，要是getNetworkData指定泛型这里可以写具体泛型)
  //then 后面的回调函数什么时候被执行？，需要在Future函数有结果，才执行下面的回调函数

  future.then((String value){
    print(value);
  }).catchError((err){
    print("执行catchError代码:$err------------");
  }).whenComplete((){
    print("代码执行完成");
  });

  /*
  下面这种无法捕捉异常
   */
//  future.then((String value){
//    print(value);
//  });
//  future.catchError((err){
//    print("执行catchError代码:$err------------");
//  });
  print("main end");
}

//模拟一个网络请求
Future<String> getNetworkData(){
  //阻塞操作
//  sleep(Duration(seconds: 2));
//  return "Hello Word";

  //1.将耗时的操作包裹到Future的回调中,只要有返回结果
  //>1.那么久执行Future对应的then的回调
  //>2 如果没有结果返回(有错误信息)，需要在Future回调中抛出一个异常
  return Future<String>(() {
//    return "Hello World";
    throw Exception("我是错误信息");
  });
}
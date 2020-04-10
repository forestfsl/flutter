import 'dart:io';

main(List<String>args){
  print("main start");

  var result = getNetworkData().then((res){
    print(res);
  });

  print("result");

  print("main end");
}


/*
解决两个问题:
1.await 必需在async函数中才能使用
2.async 函数返回的结果必需是一个Future
 */
Future getNetworkData() async{
  await sleep(Duration(seconds: 3));
  return "Hello World";
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SLDetailPage extends StatelessWidget{
  static const String routeName = "/detail";
  final String _message;

  SLDetailPage(this._message);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  WillPopScope(
      //当返回true时，可以自动返回(flutter 帮助我们执行返回操作)
      //当返回false时，自动写返回代码
      onWillPop: () {
        _backToHome(context);
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("详情页"),
//当取用上面onWillPop 的false方式，这个可以不这样操作
//          leading: IconButton(
//            icon: Icon(Icons.arrow_back),
//            onPressed:  () => _backToHome(context),
//          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(_message,style: TextStyle(fontSize: 20),),
              RaisedButton(
                child: Text("回到首页"),
                onPressed: () => _backToHome(context),
              )
            ],
          ),
        ),
      ),

    );
  }

  void _backToHome(BuildContext context){
    Navigator.of(context).pop("a detail message");
  }
}


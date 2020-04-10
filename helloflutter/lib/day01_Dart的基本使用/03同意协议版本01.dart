import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: HYHomePage(),
    );
  }
}

class HYHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("第三个Flutter程序"),
        ),
        body: HYContentBody()
    );
  }
}

class HYContentBody extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HYContentBodyState();
  }
}

class HYContentBodyState extends State<HYContentBody>{
  var flag = true;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Checkbox(
            value: flag,
            onChanged: (value) {
              this.setState((){
                flag = value;
              });
            },
          ),
          Text("同意协议",style: TextStyle(fontSize: 20))
        ],
      ),
    );
  }
}
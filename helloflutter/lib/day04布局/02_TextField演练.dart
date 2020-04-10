import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
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
        title: Text("TextField 演练"),
      ),
      body: SLHomeContent(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => print("click"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
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
  final usernameTextEditController = TextEditingController();
  final passwordTextEditController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Theme(
      data: ThemeData(
          primaryColor: Colors.green
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: usernameTextEditController,
              decoration: InputDecoration(
                  labelText: "username",
                  icon: Icon(Icons.people),
                  hintText: "请输入用户名",
                  border: InputBorder.none,
                  filled: true,
                  fillColor: Colors.red[100]
              ),
              onChanged: (value) {
                print("onChange:$value");
              },
              onSubmitted: (value) {
                print("onSubmitted:$value");
              },
            ),
            SizedBox(height: 10,),
            TextField(
              controller: passwordTextEditController,
              decoration: InputDecoration(
                labelText: "password",
                icon: Icon(Icons.lock),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              width: double.infinity,
              height: 40,
              child: FlatButton(
                child: Text("登录",style: TextStyle(fontSize: 20,color: Colors.white),),
                color: Colors.blue,
                onPressed: () {
                  //1.获取用户名和密码
                  final username = usernameTextEditController.text;
                  final password = passwordTextEditController.text;
                  print("账号:$username 密码:$password");
                  usernameTextEditController.text = "";
                  passwordTextEditController.text = "";
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helloflutter/day11/animation/image_detail.dart';
import 'package:helloflutter/day11/animation/model_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
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

class SLHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("首页"),
      ),
      body: Center(
        child: GridView(
          gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: 16/9
          ) ,
          children: List.generate(20, (index){
            final imageURL = "https://picsum.photos/500/500?random=$index";
            return GestureDetector(
              onTap: (){
                Navigator.of(context).push(PageRouteBuilder(
                  pageBuilder: (ctx,anim1,anim2){
                    return FadeTransition(opacity: anim1,child: SLImageDetailPage(imageURL),);
                  }
                ));
              },
              child: Hero(
                tag: imageURL,
                child: Image.network(
                  imageURL,
                  fit: BoxFit.cover,
                ),
              ),
            );
          }),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.poll),
        onPressed: () {
//          //iOS -> Modal 方式
//          Navigator.of(context).push(MaterialPageRoute(
//            builder: (ctx) {
//              return SLModalPage();
//            },
//            fullscreenDialog: true
//          ));
          Navigator.of(context).push(PageRouteBuilder(
            transitionDuration: Duration(seconds: 3),
            pageBuilder: (ctx,animation1,animation2){
              return FadeTransition(
                opacity: animation1,
                child: SLHomePage(),
              );
            }
          ));
        },
      ),
    );
  }
}


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: TextRichDemo(),
    );
  }
}
class TextRichDemo extends StatelessWidget{
  const TextRichDemo({
    Key key,
  }):super(key:key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text.rich(
        TextSpan(
            children: [
              TextSpan(text: "Hello World", style: TextStyle(color: Colors.red)),
              TextSpan(text: "Hello flutter", style: TextStyle(color: Colors.green)),
              WidgetSpan(child: Icon(Icons.favorite, color: Colors.red,)),
              TextSpan(text: "Hello dart", style: TextStyle(color: Colors.blue)),
            ]
        )
    );
  }
}

class TextDemo extends StatelessWidget{
  const TextDemo({
    Key key,
  }):super(key:key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      "《定风波》 苏轼 莫听穿林打叶声，何妨吟啸且徐行。竹杖芒鞋轻胜马，谁怕？一蓑烟雨任平生。",
      textAlign: TextAlign.center,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
          fontSize: 20,
          color: Colors.red,
          fontWeight: FontWeight.bold
      ),
    );
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




main() => runApp(Myapp());

class Myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
      home: HYHomePage(),
    );
  }

}

class HYHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("基础Flutter"),
      ),
      body: HYHomeContent(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => print("点击了FloatingActionButton"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class HYHomeContent extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HYHomeContentState();
  }
}

class _HYHomeContentState extends State<HYHomeContent>{
  final String imageURL = "https://tva1.sinaimg.cn/large/006y8mN6gy1g7aa03bmfpj3069069mx8.jpg";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
//    ImageExtensionDemo(imageURL: imageURL)
//    ButtonExtensionDemo()
    return ButtonExtensionDemo();
  }
}

class ButtonExtensionDemo extends StatelessWidget {
  const ButtonExtensionDemo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /*
    1.默认情况下button上下有一定的间距
    2.Button变小：ButtonTheme
    3.取出Button的内边距
     */
    return Column(
      children: <Widget>[
        ButtonTheme(
          minWidth: 30,
          height: 10,
          child: FlatButton(
            padding: EdgeInsets.all(0),
            color: Colors.red,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            child: Text("Flat Button1"),
            textColor: Colors.white,
            onPressed: () => print("click"),
          ),
        )
      ],
    );
  }
}

class ImageExtensionDemo extends StatelessWidget {
  const ImageExtensionDemo({
    Key key,
    @required this.imageURL,
  }) : super(key: key);

  final String imageURL;

  @override
  Widget build(BuildContext context) {
    return FadeInImage(
      fadeOutDuration: Duration(milliseconds: 1),
      fadeInDuration: Duration(milliseconds: 1),
      placeholder: AssetImage("assets/images/juren.jpeg"),
      image: NetworkImage(imageURL),
    );
  }
}

class IconExtensionDemo extends StatelessWidget {
  const IconExtensionDemo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Icon字体图标和图片图标
    // 1.字体图标矢量图(放大的时候不会失真)
    // 2.字体图标可以设置颜色
    // 3.图标很多时, 占据空间更小
//    return Icon(Icons.pets, size: 300, color: Colors.orange,);
//    return Icon(IconData(0xe91d, fontFamily: 'MaterialIcons'), size: 300, color: Colors.orange,);
    // 1.0xe91d -> unicode编码
    // 2.设置对应的字体
    return Icon(IconData(0xe91d, fontFamily: 'MaterialIcons'), size: 300, color: Colors.orange);
  }
}
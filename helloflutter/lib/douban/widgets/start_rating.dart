import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SLStartRating extends StatefulWidget{
  final double rating;
  final double maxRating;
  final int count;
  final double size;
  final Color unselectedColor;
  final Color selectedColor;

  final Widget unselectedImage;
  final Widget selectedImage;


  SLStartRating({
    @required this.rating,
    this.maxRating = 10,
    this.count = 5,
    this.size = 30,
    this.unselectedColor = const Color(0xffbbbbbb),
    this.selectedColor = const Color(0xffff0000),
    Widget unselectedImage,
    Widget selectedImage
  }) : unselectedImage = unselectedImage ?? Icon(Icons.star,color: unselectedColor,size: size,),
  selectedImage = selectedImage ?? Icon(Icons.star,color:selectedColor,size: size,);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SLStartRatingState();
  }
}

class _SLStartRatingState extends State<SLStartRating>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        Row(mainAxisSize: MainAxisSize.min,children: buildUnselectedStart(),),
        Row(mainAxisSize: MainAxisSize.min,children: buildSelectedStar(),)
      ],
    );
  }

  List<Widget> buildUnselectedStart(){
    return List.generate(widget.count, (index){
      return widget.unselectedImage;
    });
  }

  List<Widget> buildSelectedStar(){
    //1.创建starts
    List<Widget> stars = [];
    final star = widget.selectedImage;

    //2.构建满填充的star
    double oneValue = widget.maxRating / widget.count; //一个占的数目
    int entireCount = (widget.rating / oneValue).floor();//向下取整获取完整的数目
    for(var i = 0; i < entireCount;i++){
      stars.add(star);
    }

    //3.构建部分填充star
//    (widget.rating / oneValue) 3.5 - 3 = 0.5 * widget.size;

    double leftWidth = ((widget.rating / oneValue) - entireCount) * widget.size;
    final halfStar = ClipRect(
      clipper:SLStarClipper(leftWidth),
      child: star,
    );

    stars.add(halfStar);

    if(stars.length > widget.count){
      return stars.sublist(0,widget.count);
    }

    return stars;
  }
}

class SLStarClipper extends CustomClipper<Rect>{
  double width;
  SLStarClipper(this.width);

  @override
  Rect getClip(Size size) {
    // TODO: implement getClip
    return Rect.fromLTRB(0, 0, width, size.height);
  }

  @override
  bool shouldReclip(SLStarClipper oldClipper) {
    // TODO: implement shouldReclip
    return oldClipper.width != this.width;
  }
}
import 'package:flutter/cupertino.dart';
import 'package:helloflutter/douban/pages/home/home_movie_item.dart';
import 'package:helloflutter/douban/pages/model/home_model.dart';
import 'package:helloflutter/service/home_request.dart';

class SLHomeContent extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SLHomeContentState();
  }
}

class _SLHomeContentState extends State<SLHomeContent>{
  final List<MoveItem> movies = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    //发送网络请求
    HomeRequest.requestMovieList(0).then((res){
      setState(() {
        movies.addAll(res);
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: movies.length,
        itemBuilder: (ctx,index){
          return SLHomeMovieItem(movies[index]);
        });
  }
}
import 'package:helloflutter/douban/pages/model/home_model.dart';
import 'package:helloflutter/service/config.dart';
import 'package:helloflutter/service/http_request.dart';

class HomeRequest{
  static Future<List<MoveItem>> requestMovieList(int start) async{
    //1.构建URL
    final movieURL = "/movie/top250?start=$start&count=${HomeConfig.movieCount}&apikey=0df993c66c0c636e29ecbb5344252a4a";
    //2.发送网络请求获取结果
    final result = await HttpRequest.request(movieURL);
    final subjects = result["subjects"];

    //3.将Map转成Model
    List<MoveItem> movies = [];
    for(var sub in subjects){
      movies.add(MoveItem.fromMap(sub));
    }
    //会自动封装成一个Future回去
    return movies;
  }
}
import 'dart:convert';
import 'package:favorcate/core/model/category_model.dart';
import 'package:flutter/services.dart';

class SLJsonParse{
  static Future<List<SLCategoryModel>> getCategoryData() async {
    //1.加载json文件
    final jsonString = await rootBundle.loadString("assets/json/category.json");

    //2.将jsonString 转成Map/List
    final result = json.decode(jsonString);

    //3.将Map中的内容转成一个对象
    final resultList = result["category"];
    List<SLCategoryModel> categories = [];
    for(var json in resultList){
      categories.add(SLCategoryModel.fromJson(json));
    }
    return categories;
  }
}
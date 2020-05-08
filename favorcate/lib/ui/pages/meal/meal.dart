import 'package:favorcate/core/model/category_model.dart';
import 'package:favorcate/ui/pages/meal/meal_content.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SLMealScreen extends StatelessWidget{
  static const String routeName = "/meal";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final category = ModalRoute.of(context).settings.arguments as SLCategoryModel;
    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: SLMealContent(),
    );
  }
}
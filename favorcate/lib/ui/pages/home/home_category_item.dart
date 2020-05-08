import 'package:favorcate/core/model/category_model.dart';
import 'package:favorcate/ui/pages/meal/meal.dart';
import 'package:flutter/cupertino.dart';
import 'package:favorcate/core/extension/int_extension.dart';
import 'package:flutter/material.dart';

class SLHomeCategoryItem extends StatelessWidget {
  final SLCategoryModel _category;
  SLHomeCategoryItem(this._category);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final bgColor = _category.cColor;
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(12.px),
          gradient: LinearGradient(
            colors: [
              bgColor.withOpacity(.5),
              bgColor
            ]
          )
        ),
        alignment: Alignment.center,
        child: Text(
          _category.title,
          style: Theme.of(context).textTheme.display2.copyWith(
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      onTap: (){
        Navigator.of(context).pushNamed(SLMealScreen.routeName,arguments: _category);
      },
    );
  }
}
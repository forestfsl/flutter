import 'package:favorcate/core/model/category_model.dart';
import 'package:favorcate/core/model/meal_model.dart';
import 'package:favorcate/core/viewmodel/meal_view_model.dart';
import 'package:favorcate/ui/widgets/meal_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:collection/collection.dart';

class SLMealContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context).settings.arguments as SLCategoryModel;
    return Selector<SLMealViewModel,List<SLMealModel>>(
      selector: (ctx, mealVM){
        return mealVM.meals.where((meal){
          return meal.categories.contains(category.id);
        }).toList();
      },
      shouldRebuild: (pre,next) => !ListEquality().equals(pre, next),
      builder: (ctx, meals,child){
        return ListView.builder(
          itemCount: meals.length,
            itemBuilder: (ctx,index){
              return SLMealItem(meals[index]);
        });
      },
    );
  }
}
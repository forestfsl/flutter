import 'package:favorcate/core/model/meal_model.dart';
import 'package:favorcate/core/viewmodel/base_view_model.dart';
import 'package:favorcate/core/viewmodel/meal_view_model.dart';

class SLFavorViewModel extends BaseMealViewModel{
  void addMeal(SLMealModel meal){
    originMeals.add(meal);
    notifyListeners();
  }

  void removeMeal(SLMealModel meal){
    originMeals.remove(meal);
    notifyListeners();
  }

  void handleMeal(SLMealModel meal){
    if(isFavor(meal)){
      removeMeal(meal);
    }else{
      addMeal(meal);
    }
  }

  bool isFavor(SLMealModel meal){
    return originMeals.contains(meal);
  }
}
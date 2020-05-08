import 'package:favorcate/core/model/meal_model.dart';
import 'package:favorcate/core/viewmodel/fliter_view_model.dart';
import 'package:flutter/cupertino.dart';

class BaseMealViewModel extends ChangeNotifier{
  List<SLMealModel> _meals = [];

  SLFliterViewModel _filterVM;

  void updateFilters(SLFliterViewModel filterVM){
    _filterVM = filterVM;
  }

  List<SLMealModel> get meals{
    return _meals.where((meal) {
      if (_filterVM.isGlutenFree && !meal.isGlutenFree) return false;
      if (_filterVM.isLactoseFree && !meal.isLactoseFree) return false;
      if (_filterVM.isVegetarian && !meal.isVegetarian) return false;
      if (_filterVM.isVegan && !meal.isVegan) return false;
      return true;
    }).toList();
  }

  List<SLMealModel> get originMeals{
    return _meals;
  }

  set meals(List<SLMealModel>value){
    _meals = value;
    notifyListeners();
  }

}
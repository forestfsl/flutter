import 'package:favorcate/core/viewmodel/base_view_model.dart';
import 'package:favorcate/core/services/meal_request.dart';

class SLMealViewModel extends BaseMealViewModel{
  SLMealViewModel(){
    SLMealRequest.getMealData().then((res){
      meals = res;
    });
  }
}
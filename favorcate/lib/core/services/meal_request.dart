import 'package:favorcate/core/model/meal_model.dart';
import 'package:favorcate/core/services/http_request.dart';

class SLMealRequest{
  static Future<List<SLMealModel>> getMealData() async {
    // 1.发送网络请求
    final url = "/meal";
    final result = await HttpRequest.request(url);

    // 2.json转modal
    final mealArray = result["meal"];
    List<SLMealModel> meals = [];
    for (var json in mealArray) {
      meals.add(SLMealModel.fromJson(json));
    }
    return meals;
  }
}
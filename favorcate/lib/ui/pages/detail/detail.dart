
import 'package:favorcate/core/model/meal_model.dart';
import 'package:favorcate/ui/pages/detail/detail_content.dart';
import 'package:favorcate/ui/pages/detail/detail_floating_button.dart';
import 'package:flutter/material.dart';

class SLDetailScreen extends StatelessWidget {
  static const String routeName = "/detail";
  @override
  Widget build(BuildContext context) {
    final meal = ModalRoute.of(context).settings.arguments as SLMealModel;
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
      ),
      body: SLDetailContent(meal),
      floatingActionButton: SLDetailFloatingButton(meal),
    );
  }
}

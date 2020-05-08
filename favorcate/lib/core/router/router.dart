import 'package:favorcate/ui/pages/detail/detail.dart';
import 'package:favorcate/ui/pages/fliter/fliter.dart';
import 'package:favorcate/ui/pages/main/main.dart';
import 'package:favorcate/ui/pages/meal/meal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SLRouter{
  static final String initialRoute = SLMainScreen.routeName;

  static final Map<String, WidgetBuilder> routes = {
    SLMainScreen.routeName:(ctx) => SLMainScreen(),
    SLMealScreen.routeName:(ctx) => SLMealScreen(),
    SLDetailScreen.routeName:(ctx) => SLDetailScreen()
  };

  //自己扩展
 static final RouteFactory generateRoute = (settings){
   if(settings.name == SLFliterScreen.routeName){
     return MaterialPageRoute(
       builder: (ctx) {
         return SLFliterScreen();
       },
       fullscreenDialog: true
     );
   }
   return null;
 };

 static final RouteFactory unknownRoute = (settings){
   return null;
 };
}
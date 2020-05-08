import 'package:favorcate/core/router/router.dart';
import 'package:favorcate/core/viewmodel/favor_view_model.dart';
import 'package:favorcate/core/viewmodel/fliter_view_model.dart';
import 'package:favorcate/core/viewmodel/meal_view_model.dart';
import 'package:favorcate/ui/shared/app_theme.dart';
import 'package:favorcate/ui/shared/size_fit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx) => SLFliterViewModel()),
        ChangeNotifierProxyProvider<SLFliterViewModel,SLMealViewModel>(
          create: (ctx) => SLMealViewModel(),
          update:(ctx,filterVM,mealVM){
            mealVM.updateFilters(filterVM);
            return mealVM;
          },
        ),
        ChangeNotifierProxyProvider<SLFliterViewModel,SLFavorViewModel>(
          create: (ctx) => SLFavorViewModel(),
          update: (ctx,filterVM,favorVM){
            favorVM.updateFilters(filterVM);
            return favorVM;
          },
        )
        ],
      child: MyApp(),
    )
  );
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //对SLSizeFit进行初始化
    SLSizeFit.initialize();
    return MaterialApp(
      title: '美食广场',
      theme: SLAppTheme.norTheme,
      //路由
      initialRoute: SLRouter.initialRoute,
      routes: SLRouter.routes,
      onGenerateRoute: SLRouter.generateRoute,
      onUnknownRoute: SLRouter.unknownRoute,
    );
  }
}
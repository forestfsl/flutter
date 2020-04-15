import 'package:flutter/material.dart';

import 'main.dart';
import 'about.dart';
import 'detail.dart';
import 'unknown.dart';


class SLRouter{
  static final Map<String, WidgetBuilder> routes = {
    SLHomePage.routeName : (ctx) => SLHomePage(),
    SLAboutPage.routeName: (ctx) => SLAboutPage()
  };

  static final String initialRoute = SLHomePage.routeName;

  static final RouteFactory generateRoute = (settings){
    if(settings.name == SLDetailPage.routeName){
      return MaterialPageRoute(
        builder: (ctx){
          return SLDetailPage(settings.arguments);
        }
      );
    }
    return null;
  };

  static final RouteFactory  unknowRoute = (settings){
    return MaterialPageRoute(
      builder: (ctx) {
        return SLUnknownPage();
      }
    );
  };

}
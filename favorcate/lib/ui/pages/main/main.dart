import 'package:favorcate/ui/pages/home/home_drawer.dart';
import 'package:favorcate/ui/pages/main/initialize_items.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SLMainScreen extends StatefulWidget{
  static const String routeName = "/";

  @override
  State<StatefulWidget> createState() => _SLMainScreenState();

}

class _SLMainScreenState extends State<SLMainScreen>{

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      drawer: SLHomeDrawer(),
      body: IndexedStack(
        index: _currentIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        items:items,
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }

}
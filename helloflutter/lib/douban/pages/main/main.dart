import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'initialize_items.dart';

class SLMainPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SLMainPageState();
  }
}

class _SLMainPageState extends State<SLMainPage>{
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,//当前选中哪一个item
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 14,//选中时的文本大小
        unselectedFontSize: 14,//未选中时的文本大小
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,//超过2个item 需要加这个
        items: items,
        onTap: (index){//监听哪一个item被选中
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
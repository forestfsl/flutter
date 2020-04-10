import 'package:flutter/cupertino.dart';

import 'bottom_bar_item.dart';
import '../home/home.dart';
import '../subject/subject.dart';

List<SLBottomBarItem> items = [
  SLBottomBarItem('home',"首页"),
  SLBottomBarItem('subject',"书影音"),
  SLBottomBarItem('group',"小组"),
  SLBottomBarItem('mall',"市集"),
  SLBottomBarItem('profile',"我的"),
];

List<Widget> pages = [
  SLHomePage(),
  SLSubjectPage(),
];
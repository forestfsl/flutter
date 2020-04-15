//1.创建自己需要共享的数据
import 'package:flutter/material.dart';

class SLCounterViewMode extends ChangeNotifier{
  int _counter = 100;

  int get counter => _counter;

  set counter(int value) {
    _counter = value;
    notifyListeners();
  }


}
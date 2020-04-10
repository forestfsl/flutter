import 'package:flutter/cupertino.dart';

import '../model/user_info.dart';

class SLUserViewModel extends ChangeNotifier{
  UserInfo _user;
  SLUserViewModel(this._user);

  UserInfo get user => _user;

  set user(UserInfo value){
    _user = value;
    notifyListeners();
  }
}
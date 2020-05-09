import 'package:flutter/cupertino.dart';
import 'package:i18n_demo/i18n/localizations.dart';

class SLLocalizationsDelegate extends LocalizationsDelegate<SLLocalizations>{
  static SLLocalizationsDelegate delegate = SLLocalizationsDelegate();


  @override
  bool isSupported(Locale locale) {
    // TODO: implement isSupported
    return ["zh","en"].contains(locale.languageCode);
  }

  @override
  bool shouldReload(LocalizationsDelegate old) {
    // TODO: implement shouldReload
    return false;
  }

  @override
  Future<SLLocalizations> load(Locale locale) async{
    // TODO: implement load
     final localizations = SLLocalizations(locale);
     await localizations.loadJson();
     return localizations;
  }
}
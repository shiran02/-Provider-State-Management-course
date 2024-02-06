

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ThemeChanger with ChangeNotifier{

  var _themeMode = ThemeMode.dark;
  
  ThemeMode get themeMode => _themeMode;

  void setTheme(themeMode){
    _themeMode = themeMode;
    notifyListeners();
  }


}
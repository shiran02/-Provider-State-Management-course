import 'package:flutter/material.dart';

class CountPRovider with ChangeNotifier{
  int _count = 0;
  int get count => _count;

  void setCount (){
    _count++;
    print('in count $_count');
    notifyListeners();
  } 
}
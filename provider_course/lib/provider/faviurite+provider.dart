

import 'package:flutter/material.dart';

class FavouriteItemProvider with ChangeNotifier{

      List<int> _selectedItem = [];

      List<int> get selectedItem => _selectedItem;

      int get listLength => _selectedItem.length;


      void addItems(int value){
        _selectedItem.add(value);
        notifyListeners();
      }

      void remiveItems(int value){
        _selectedItem.remove(value);
        notifyListeners();
      }

    

  
}
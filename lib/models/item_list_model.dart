import 'package:flutter/material.dart';

class ItemListModel with ChangeNotifier  {
  final String name; 
  bool ischoosen; 

  ItemListModel({this.name,this.ischoosen=true});


  void toggleischoosen (){
    ischoosen = !ischoosen;
    notifyListeners();
  }

}
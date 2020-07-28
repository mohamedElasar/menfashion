import 'package:flutter/material.dart';
import 'package:menfashion/models/piece_model.dart';
import 'package:menfashion/providers/items_list.dart';

class Shop with ChangeNotifier{
  final String name; 
  final String imagepath; 
  final String id;
  final List<Piece> shopitems;
  final String address;
  final List<String> categories;
  bool isfavorit;

  Shop({this.name, this.imagepath, this.id,this.shopitems,this.address,this.categories,this.isfavorit=false}); 


  void togglefavorit (String id){
    isfavorit= (!isfavorit);
    notifyListeners();
  }


  
}
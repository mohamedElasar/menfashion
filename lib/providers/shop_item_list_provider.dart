import 'package:flutter/material.dart';
import '../models/item_list_model.dart';
import '../models/Shop.dart';

// enum Choice {
//   All,
//   Men,
//   Women,
//   Kids,
//   Shoses,
//   Others,
// }

class ItemListProvider with ChangeNotifier {
 static  List<String> _items =['All', 'Men', 'Women', 'kids', 'shoses', 'others'];
 
  // ['All', 'Men', 'Women', 'kids', 'shoses', 'others'];
  // List<Choice> _listofchoices = [
  //   Choice.All,
  //   Choice.Men,
  //   Choice.Women,
  //   Choice.Kids,
  //   Choice.Shoses,
  //   Choice.Others
  // ];

  String _listitems = _items[1];

  List<String> get items {
    return [..._items];
  }

  String get listitems {
    return _listitems;
  }

  // List<Choice> get listofchoices {
  //   return [..._listofchoices];
  // }

  void change(String i) {
    _listitems = i;
    notifyListeners();
  }
  
  void shoplistitems (List<String> list){
    _items = list;
    notifyListeners();
  }
    
}

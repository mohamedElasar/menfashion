import 'package:flutter/material.dart';
import '../models/item_list_model.dart';

enum Choice {
  All,
  Men,
  Women,
  Kids,
  Shoses,
  Others,
}

class ItemListProvider with ChangeNotifier {
  List<String> _items = ['All', 'Men', 'Women', 'kids', 'shoses', 'others'];
  List<Choice> _listofchoices = [
    Choice.All,
    Choice.Men,
    Choice.Women,
    Choice.Kids,
    Choice.Shoses,
    Choice.Others
  ];

  Choice _listitems = Choice.All;

  List<String> get items {
    return [..._items];
  }

  Choice get listitems {
    return _listitems;
  }

  List<Choice> get listofchoices {
    return [..._listofchoices];
  }

  void change(Choice i) {
    _listitems = i;
    notifyListeners();
  }

  
}

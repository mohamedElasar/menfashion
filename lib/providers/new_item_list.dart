import 'dart:convert';

import 'package:flutter/material.dart';
import '../models/item_list_model.dart';
import 'package:http/http.dart' as http;
import 'package:menfashion/models/category_model.dart';
import 'package:menfashion/screens/first_screen.dart';

// enum Choice {

//   All,
//   Men,
//   Women,
//   Kids,
//   Shoses,
//   Others,
// }

class ItemListProvider with ChangeNotifier {
  static List<String> _items = [];

  // ['All', 'Men', 'Women', 'kids', 'shoses', 'others'];
  // List<Choice> _listofchoices = [
  //   Choice.All,
  //   Choice.Men,
  //   Choice.Women,
  //   Choice.Kids,
  //   Choice.Shoses,
  //   Choice.Others
  // ];
  String _listitems;

  List<String> get items {
    return [..._items];
  }

  String get listitems {
    return _listitems;
  }

  int _selectedindex = 0;

  int get selectedindex {
    return _selectedindex;
  }

  void changeindex(int i) {
    _selectedindex = i;
    notifyListeners();
  }

  // List<Choice> get listofchoices {
  //   return [..._listofchoices];
  // }

  void change(String i) {
    _listitems = i;
    notifyListeners();
  }

  void shoplistitems(List<String> list) {
    _items = list;
    notifyListeners();
  }

  // Future<Category_list> listcat = fetchcategories();

  Future<void> setcat() async {
    final mylist = await fetchcategories();
    final List<String> lodadedlist = [];

    mylist.categories.forEach((value) => lodadedlist.add(value.category_name));
    _items = lodadedlist;
    _listitems = _items[1];

    notifyListeners();
  }

// Future<Category_list> fetchcategories() async {
//   final response = await http.get('http://159.65.76.96:8080/style/category/all');
//     // print (response.body);

//     return Category_list.fromJson((json.decode(response.body)));

// }

  Future<void> testgetcategories() async {
    const url = 'http://159.65.76.96:8080/style/category/all';

    try {
      final response = await http.get(url);
      print(
        json.decode(response.body),
      );
    } catch (error) {
      throw (error);
    }
  }
}

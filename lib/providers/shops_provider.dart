import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:menfashion/providers/items_list.dart';
import '../models/Shop.dart';
import '../models/piece_model.dart';
import '../models/governorate.dart';
import '../models/shop_model.dart';

class CatShops with ChangeNotifier {
  // bool loading = false;
  // bool triggerdefault = true;


   int _id = 1;

  int get id {
    return _id;
  }
  void changeid(int i){
    _id = i;
    notifyListeners();
  }
  
  static List<Shop_model> _shops = [];

  

  List<Shop_model> get shops {
    return [..._shops];
  }



  Future<void> setshops(String id) async {
    final myshops = await fetchshops(id);
    final List<Shop_model> lodadedshops = [];

    myshops.shops.forEach((value)=>lodadedshops.add(value));
    _shops = lodadedshops;
    // print(myshops);

    // mylist.categories.forEach((value) => lodadedlist.add(value.category_name));
    // _items = lodadedlist;
    // _listitems = _items[1];

    notifyListeners();
  }
}




//   Shop_model shopitem (String id) {
//     return _shops.firstWhere((item) => item.id == id);
//   }

//   void filteredshops(String category) {
//     // _items = _items.where((p) => p.categories.contains(category)).toList();
//     // print(_items.where((p)=>p.categories==['Men']).toList());
//     // print(_items[1].categories);
//     _first = category;

//     notifyListeners();
//   }

//   void filterbyname(String name) {
//     _second = name;
//   }

//   String getshopid(String name) {
//     var shop = _items.firstWhere((p) => p.name == name);
//     return shop.id;
//   }
//   // String getshop(String name){
//   //   var 
//   // }

//   List<Shop> get filterditems {
//     switch (_first) {
//       case 'All':
//         return _items;
//       case 'Men':
//         return _second == ''
//             ? _items.where((p) => p.categories.contains('Men')).toList()
//             : _items
//                 .where((p) => p.categories.contains('Men'))
//                 .toList()
//                 .where((p) => p.name == _second)
//                 .toList();

//       case 'Women':
//         return _items.where((p) => p.categories.contains('Women')).toList();

//       case 'Kids':
//         return _items.where((p) => p.categories.contains('Kids')).toList();

//       case 'Shoses':
//         return _items.where((p) => p.categories.contains('Shoses')).toList();

//       case 'Others':
//         return _items.where((p) => p.categories.contains('Others')).toList();

//         break;
//       default:
//     }
//   }

//   // List<Shop> _favorits = [];
//   // List<Shop> get favorits {
//   //   return [..._favorits];
//   // }

//   // void togglefavorit(String id) {
//   //   final existingindex = favorits.indexWhere((p) => p.id == id);
//   //   if (existingindex < 0) {
//   //     _favorits.add(_items.firstWhere((s) => s.id == id));
//   //     notifyListeners();
//   //   }
//   //   if (existingindex >= 0) {
//   //     _favorits.removeAt(existingindex);
//   //     notifyListeners();
//   //   }
//   // }

//   bool isfavorit(String id) {
//     return favoitems.any((m) => m.id == id);
//   }

//   List<Shop> get favoitems {
//     return _items.where((p) => p.isfavorit == true).toList();
//   }

  
//   String _id = '';
//   // Shop _myshop; 

//   String get id {
//     return _id;
//   }
//   void whtid (String myid){
//     _id =myid;
//   }

// List<Piece>  filtershoppieces(Shop shop ,String my) {
//     // Shop myshop  = _items.firstWhere((p)=>p.id==_id);
//     // List<String> categ = myshop.categories;
//     // _expanded = false;
//     // notifyListeners();
//     return
//     // _id==''?
//     // :
//      shop.shopitems.where((p)=>p.cat==my).toList();
//   }


//   String _catfilt = '';
//   String get catfilt {
//     return _catfilt;
//   }

//   void setcatfilt (String filt){
//     _catfilt =filt;
//     notifyListeners();
//   }
  


// // bool _expanded = false;

// // bool get expanded{
// //   return _expanded;
// // } 

// // void setexpanded(bool b){
// //   _expanded = b;
// //   notifyListeners();
// // }


// }

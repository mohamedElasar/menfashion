import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:menfashion/providers/items_list.dart';
import '../models/Shop.dart';
import '../models/piece_model.dart';
import '../models/governorate.dart';

class Shops with ChangeNotifier {
  List<Shop> _items = [
    Shop(
        id: 's1',
        name: 'Town Team',
        imagepath: 'assets/images/placceholder.jpg',
        shopitems: [
          Piece(
            cat: 'Men',
            id: 'p1',
            type: Item_type.Shirt,
            imageurl: null,
            shopid: null,
            city: 'sidigaber',
            gov: Governorate(name: 'Alexandria'),
          ),
          Piece(
            cat: 'Kids',
            id: 'p2',
            type: Item_type.Jacket,
            imageurl: null,
            shopid: null,
            city: 'shbein alkom',
            gov: Governorate(name: 'Mnofia'),
          ),
          Piece(
              cat: 'Kids',
              id: 'p3',
              type: Item_type.Trousers,
              imageurl: null,
              shopid: null,
              city: 'shbein alkom',
              gov: Governorate(name: 'Mnofia')),
        ],
        address: 'alexandria - moharam bek',
        categories: ['Men', 'Kids']),
    Shop(
        id: 's2',
        name: 'Town Team',
        imagepath: 'assets/images/placceholder.jpg',
        shopitems: [
          Piece(
            cat: 'Men',
            id: 'p1',
            type: Item_type.Shirt,
            imageurl: null,
            shopid: null,
            city: 'sidigaber',
            gov: Governorate(name: 'Alexandria'),
          ),
          Piece(
            cat: 'Shoses',
            id: 'p2',
            type: Item_type.Jacket,
            imageurl: null,
            shopid: null,
            city: 'shbein alkom',
            gov: Governorate(name: 'Mnofia'),
          ),
          Piece(
            cat: 'Shoses',
            id: 'p3',
            type: Item_type.Trousers,
            imageurl: null,
            shopid: null,
            city: 'shbein alkom',
            gov: Governorate(name: 'Mnofia'),
          ),
          Piece(
            cat: 'Shoses',
            id: 'p1',
            type: Item_type.Shirt,
            imageurl: null,
            shopid: null,
            city: 'sidigaber',
            gov: Governorate(name: 'Alexandria'),
          ),
          Piece(
            cat: 'Shoses',
            id: 'p1',
            type: Item_type.Shirt,
            imageurl: null,
            shopid: null,
            city: 'sidigaber',
            gov: Governorate(name: 'Alexandria'),
          ),
          Piece(
            cat: 'Men',
            id: 'p1',
            type: Item_type.Shirt,
            imageurl: null,
            shopid: null,
            city: 'sidigaber',
            gov: Governorate(name: 'Alexandria'),
          ),
          Piece(
            cat: 'Shoses',
            id: 'p1',
            type: Item_type.Shirt,
            imageurl: null,
            shopid: null,
            city: 'sidigaber',
            gov: Governorate(name: 'Alexandria'),
          ),
        ],
        address: 'alexandria - sidigaber',
        categories: ['Shoses', 'Men']),
    Shop(
        id: 's3',
        name: 'Town Team',
        imagepath: 'assets/images/placceholder.jpg',
        shopitems: [
          Piece(
            id: 'p1',
            type: Item_type.Shirt,
            imageurl: null,
            shopid: null,
            city: 'sidigaber',
            gov: Governorate(name: 'Alexandria'),
          ),
          Piece(
            id: 'p2',
            type: Item_type.Jacket,
            imageurl: null,
            shopid: null,
            city: 'shbein alkom',
            gov: Governorate(name: 'Mnofia'),
          ),
          Piece(
              id: 'p3',
              type: Item_type.Trousers,
              imageurl: null,
              shopid: null,
              city: 'shbein alkom',
              gov: Governorate(name: 'Mnofia')),
        ],
        address: 'alexandria - asdasd',
        categories: ['Shoses', 'Women']),
    Shop(
        id: 's4',
        name: 'Town Team',
        imagepath: 'assets/images/placceholder.jpg',
        shopitems: [
          Piece(
            id: 'p1',
            type: Item_type.Shirt,
            imageurl: null,
            shopid: null,
            city: 'sidigaber',
            gov: Governorate(name: 'Alexandria'),
          ),
          Piece(
            id: 'p2',
            type: Item_type.Jacket,
            imageurl: null,
            shopid: null,
            city: 'shbein alkom',
            gov: Governorate(name: 'Mnofia'),
          ),
          Piece(
              id: 'p3',
              type: Item_type.Trousers,
              imageurl: null,
              shopid: null,
              city: 'shbein alkom',
              gov: Governorate(name: 'Mnofia')),
        ],
        address: 'alexandria - lkjs',
        categories: ['Shoses', 'Others']),
    Shop(
        id: 's5',
        name: 'Town Team',
        imagepath: 'assets/images/placceholder.jpg',
        shopitems: [
          Piece(
            id: 'p1',
            type: Item_type.Shirt,
            imageurl: null,
            shopid: null,
            city: 'sidigaber',
            gov: Governorate(name: 'Alexandria'),
          ),
          Piece(
            id: 'p2',
            type: Item_type.Jacket,
            imageurl: null,
            shopid: null,
            city: 'shbein alkom',
            gov: Governorate(name: 'Mnofia'),
          ),
          Piece(
              id: 'p3',
              type: Item_type.Trousers,
              imageurl: null,
              shopid: null,
              city: 'shbein alkom',
              gov: Governorate(name: 'Mnofia')),
        ],
        address: 'alexandria - ois',
        categories: ['Women']),
    Shop(
        id: 's6',
        name: 'Town Team',
        imagepath: 'assets/images/placceholder.jpg',
        shopitems: [
          Piece(
            id: 'p1',
            type: Item_type.Shirt,
            imageurl: null,
            shopid: null,
            city: 'sidigaber',
            gov: Governorate(name: 'Alexandria'),
          ),
          Piece(
            id: 'p2',
            type: Item_type.Jacket,
            imageurl: null,
            shopid: null,
            city: 'shbein alkom',
            gov: Governorate(name: 'Mnofia'),
          ),
          Piece(
              id: 'p3',
              type: Item_type.Trousers,
              imageurl: null,
              shopid: null,
              city: 'shbein alkom',
              gov: Governorate(name: 'Mnofia')),
        ],
        address: 'alexandria - sss',
        categories: ['Men']),
    Shop(
        id: 's7',
        name: 'Town Team',
        imagepath: 'assets/images/placceholder.jpg',
        shopitems: [
          Piece(
            id: 'p1',
            type: Item_type.Shirt,
            imageurl: null,
            shopid: null,
            city: 'sidigaber',
            gov: Governorate(name: 'Alexandria'),
          ),
          Piece(
            id: 'p2',
            type: Item_type.Jacket,
            imageurl: null,
            shopid: null,
            city: 'shbein alkom',
            gov: Governorate(name: 'Mnofia'),
          ),
          Piece(
              id: 'p3',
              type: Item_type.Trousers,
              imageurl: null,
              shopid: null,
              city: 'shbein alkom',
              gov: Governorate(name: 'Mnofia')),
        ],
        address: 'alexandria - www',
        categories: ['Others']),
    Shop(
      id: 's8',
      name: 'Town Team',
      imagepath: 'assets/images/placceholder.jpg',
      shopitems: [
        Piece(
          id: 'p1',
          type: Item_type.Shirt,
          imageurl: null,
          shopid: null,
          city: 'sidigaber',
          gov: Governorate(name: 'Alexandria'),
        ),
        Piece(
          id: 'p2',
          type: Item_type.Jacket,
          imageurl: null,
          shopid: null,
          city: 'shbein alkom',
          gov: Governorate(name: 'Mnofia'),
        ),
        Piece(
            id: 'p3',
            type: Item_type.Trousers,
            imageurl: null,
            shopid: null,
            city: 'shbein alkom',
            gov: Governorate(name: 'Mnofia')),
      ],
      address: 'alexandria - lll',
      categories: ['Kids'],
    ),
    Shop(
        id: 's9',
        name: 'Town Team',
        imagepath: 'assets/images/placceholder.jpg',
        shopitems: [
          Piece(
            id: 'p1',
            type: Item_type.Shirt,
            imageurl: null,
            shopid: null,
            city: 'sidigaber',
            gov: Governorate(name: 'Alexandria'),
          ),
          Piece(
            id: 'p2',
            type: Item_type.Jacket,
            imageurl: null,
            shopid: null,
            city: 'shbein alkom',
            gov: Governorate(name: 'Mnofia'),
          ),
          Piece(
              id: 'p3',
              type: Item_type.Trousers,
              imageurl: null,
              shopid: null,
              city: 'shbein alkom',
              gov: Governorate(name: 'Mnofia')),
        ],
        address: 'alasd - sss',
        categories: ['Men'])
  ];

  String _first = 'All';
  String get first {
    return _first;
  }

  String _second = '';
  String get second {
    return _second;
  }

  String _third = 'Near';
  String get third {
    return _third;
  }

  List<Shop> get items {
    return [..._items];
  }

  Shop shopitem(String id) {
    return _items.firstWhere((item) => item.id == id);
  }

  void filteredshops(String category) {
    // _items = _items.where((p) => p.categories.contains(category)).toList();
    // print(_items.where((p)=>p.categories==['Men']).toList());
    // print(_items[1].categories);
    _first = category;

    notifyListeners();
  }

  void filterbyname(String name) {
    _second = name;
  }

  String getshopid(String name) {
    var shop = _items.firstWhere((p) => p.name == name);
    return shop.id;
  }
  // String getshop(String name){
  //   var 
  // }

  List<Shop> get filterditems {
    switch (_first) {
      case 'All':
        return _items;
      case 'Men':
        return _second == ''
            ? _items.where((p) => p.categories.contains('Men')).toList()
            : _items
                .where((p) => p.categories.contains('Men'))
                .toList()
                .where((p) => p.name == _second)
                .toList();

      case 'Women':
        return _items.where((p) => p.categories.contains('Women')).toList();

      case 'Kids':
        return _items.where((p) => p.categories.contains('Kids')).toList();

      case 'Shoses':
        return _items.where((p) => p.categories.contains('Shoses')).toList();

      case 'Others':
        return _items.where((p) => p.categories.contains('Others')).toList();

        break;
      default:
    }
  }

  // List<Shop> _favorits = [];
  // List<Shop> get favorits {
  //   return [..._favorits];
  // }

  // void togglefavorit(String id) {
  //   final existingindex = favorits.indexWhere((p) => p.id == id);
  //   if (existingindex < 0) {
  //     _favorits.add(_items.firstWhere((s) => s.id == id));
  //     notifyListeners();
  //   }
  //   if (existingindex >= 0) {
  //     _favorits.removeAt(existingindex);
  //     notifyListeners();
  //   }
  // }

  bool isfavorit(String id) {
    return favoitems.any((m) => m.id == id);
  }

  List<Shop> get favoitems {
    return _items.where((p) => p.isfavorit == true).toList();
  }

  
  String _id = '';
  // Shop _myshop; 

  String get id {
    return _id;
  }
  void whtid (String myid){
    _id =myid;
  }

List<Piece>  filtershoppieces(Shop shop ,String my) {
    // Shop myshop  = _items.firstWhere((p)=>p.id==_id);
    // List<String> categ = myshop.categories;
    // _expanded = false;
    // notifyListeners();
    return
    // _id==''?
    // :
     shop.shopitems.where((p)=>p.cat==my).toList();
  }


  String _catfilt = '';
  String get catfilt {
    return _catfilt;
  }

  void setcatfilt (String filt){
    _catfilt =filt;
    notifyListeners();
  }
  


// bool _expanded = false;

// bool get expanded{
//   return _expanded;
// } 

// void setexpanded(bool b){
//   _expanded = b;
//   notifyListeners();
// }


}

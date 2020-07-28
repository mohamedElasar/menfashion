// import 'package:flutter/cupertino.dart';
// import 'package:menfashion/models/governorate.dart';

// import '../models/Shop.dart';
// import '../models/piece_model.dart';

// // enum Item_type { T_Shirt, Trousers, Shirt, Jacket }

// class Pieces with ChangeNotifier {
//   List<Piece> _items = [
//     Piece(
//       id: 'p1',
//       type: Item_type.Shirt,
//       imageurl: null,
//       shopid: null,
//       city: 'sidigaber',
//       gov: Governorate(name: 'Alexandria'),
//     ),
//     Piece(
//       id: 'p2',
//       type: Item_type.Jacket,
//       imageurl: null,
//       shopid: null,
//       city: 'shbein alkom',
//       gov: Governorate(name: 'Mnofia'),
//     ),
//     Piece(
//         id: 'p3',
//         type: Item_type.Trousers,
//         imageurl: null,
//         shopid: null,
//         city: 'shbein alkom',
//         gov: Governorate(name: 'Mnofia')),
//     Piece(
//         id: 'p4',
//         type: Item_type.T_Shirt,
//         imageurl: null,
//         shopid: null,
//         city: 'berket alsabaa',
//         gov: Governorate(name: 'Mnofia')),
//         Piece(
//         id: 'p5',
//         type: Item_type.T_Shirt,
//         imageurl: null,
//         shopid: null,
//         city: 'shbein alkom',
//         gov: Governorate(name: 'Mnofia')),
//   ];

//   List<Piece> get items {
//     return [..._items];
//   }

//   List<Piece> filterByGov(String gov) {
//     return _items.where((itemcity) => itemcity.gov.name==gov).toList();
//   }
//   List<Piece>filterByCity (String mycity ){
//     return _items.where((item)=>item.city==mycity).toList();
//   }
// }

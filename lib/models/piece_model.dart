import 'package:flutter/foundation.dart';
import 'package:menfashion/models/governorate.dart';

import '../models/Shop.dart';

enum Item_type {
  T_Shirt,
  Trousers,
  Shirt,
  Jacket,
}
// enum Item_City {
//   SidiBishr,
//   Shobra,
//   Shbin,
// }

class Piece with ChangeNotifier {
  final String id;
  final Item_type type;
  final String imageurl;
  final String shopid;
  final String city;
  final Governorate gov;
  final String cat;

  Piece({
    this.id,
    this.type,
    this.imageurl,
    this.shopid,
    this.city,
    this.gov,
    this.cat,
  });
}

import 'package:flutter/foundation.dart';

import '../models/governorate.dart';
import '../models/Shop.dart';

class GovItems with ChangeNotifier {
  List<Governorate> _governorates = [
    Governorate(
      id: 'g1',
      name: 'Alexandria',
      imageUrl: null,
      shops: [
        Shop(name: 'town team', imagepath: null, id: null),
        Shop(name: 'Patrol', imagepath: null, id: null),
        Shop(name: 'Patrol', imagepath: null, id: null),
        Shop(name: 'Patrol', imagepath: null, id: null),
        Shop(name: 'Patrol', imagepath: null, id: null),
        Shop(name: 'Patrol', imagepath: null, id: null),
        Shop(name: 'Patrol', imagepath: null, id: null),
        Shop(name: 'Patrol', imagepath: null, id: null),
      ],
    ),
     Governorate(
      id: 'g2',
      name: 'Cairo',
      imageUrl: null,
      shops: [
        Shop(name: 'Zara', imagepath: null, id: null),
        Shop(name: 'Themberland', imagepath: null, id: null),
        Shop(name: 'Patrol', imagepath: null, id: null),
        Shop(name: 'Patrol', imagepath: null, id: null),
        Shop(name: 'Patrol', imagepath: null, id: null),
        Shop(name: 'Patrol', imagepath: null, id: null),
        Shop(name: 'Patrol', imagepath: null, id: null),
        Shop(name: 'Patrol', imagepath: null, id: null),
        Shop(name: 'Patrol', imagepath: null, id: null),
      ],
    ),
     Governorate(
      id: 'g3',
      name: 'Mansoura',
      imageUrl: null,
      shops: [
        Shop(name: 'town team', imagepath: null, id: null),
        Shop(name: 'town team', imagepath: null, id: null),
        Shop(name: 'town team', imagepath: null, id: null),
        Shop(name: 'town team', imagepath: null, id: null),
        Shop(name: 'town team', imagepath: null, id: null),
        Shop(name: 'town team', imagepath: null, id: null),
        Shop(name: 'town team', imagepath: null, id: null),
      ],
    ),
    Governorate(
      id: 'g4',
      name: 'Mnofia',
      imageUrl: null,
      shops: [
        Shop(name: 'town team', imagepath: null, id: null),
        Shop(name: 'town team', imagepath: null, id: null),
        Shop(name: 'town team', imagepath: null, id: null),
        Shop(name: 'town team', imagepath: null, id: null),
        Shop(name: 'town team', imagepath: null, id: null),
        Shop(name: 'town team', imagepath: null, id: null),
        Shop(name: 'town team', imagepath: null, id: null),
      ],
    ),
    Governorate(
      id: 'g5',
      name: 'Tanta',
      imageUrl: null,
      shops: [
        Shop(name: 'town team', imagepath: null, id: null),
        Shop(name: 'town team', imagepath: null, id: null),
        Shop(name: 'town team', imagepath: null, id: null),
        Shop(name: 'town team', imagepath: null, id: null),
        Shop(name: 'town team', imagepath: null, id: null),
        Shop(name: 'town team', imagepath: null, id: null),
        Shop(name: 'town team', imagepath: null, id: null),
      ],
    ),
    Governorate(
      id: 'g6',
      name: 'Sharkia',
      imageUrl: null,
      shops: [
        Shop(name: 'town team', imagepath: null, id: null),
        Shop(name: 'town team', imagepath: null, id: null),
        Shop(name: 'town team', imagepath: null, id: null),
        Shop(name: 'town team', imagepath: null, id: null),
        Shop(name: 'town team', imagepath: null, id: null),
        Shop(name: 'town team', imagepath: null, id: null),
        Shop(name: 'town team', imagepath: null, id: null),
      ],
    )
  ];
  List<Governorate> get governorates {
    return [..._governorates];
  }

  Governorate findById (String id){
    return governorates.firstWhere((item)=>item.id==id);

  }
}

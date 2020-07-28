import 'package:flutter/material.dart';
import 'package:menfashion/models/shop_model.dart';
import 'package:menfashion/providers/shops.dart';
import 'package:provider/provider.dart';
import '../models/Shop.dart';
import '../screens/shop_Screen.dart';

class ShopCard extends StatefulWidget {
  @override
  _ShopCardState createState() => _ShopCardState();
}

class _ShopCardState extends State<ShopCard> {
  bool _expanded;
  // @override
  // void initState() {

  //   // _expanded = false;
  //   super.initState();
  // }

  @override
  void didChangeDependencies() {
    // _expanded = Provider.of<Shops>(context).expanded;
    _expanded = false;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    var shop = Provider.of<Shop_model>(context);

    return GestureDetector(
       onTap: () {
              // Provider.of<Shops>(context).setcatfilt(shop.categories[0]);
              // print(Provider.of<Shops>(context).catfilt);

              // Navigator.of(context).push(
              //   MaterialPageRoute(
              //     builder: (ctx) => MyShop(id: shop.id),
              //   ),
              // );
            },
          child: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(40.0, 5.0, 5, 5.0),
            height: 200.0,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              // borderRadius: BorderRadius.circular(20.0),
            ),
            child: Padding(
              padding: EdgeInsets.fromLTRB(100.0, 20.0, 20, 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: 120.0,
                        child: Text(
                          shop.shop_name,
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w600,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      ),
                      Column(
                        children: <Widget>[
                          Text(
                            '${shop.shop_id}',
                            style: TextStyle(
                              fontSize: 22.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Text(
                    shop.shop_description,
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  // _buildRatingStars(activity.rating),
                  SizedBox(height: 10.0),
                  
                ],
              ),
            ),
          ),
          Positioned(
            left: 20.0,
            top: 15.0,
            bottom: 15.0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image(
                width: 110.0,
                image: AssetImage(
                  'assets/images/shop.jpg',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );

//     Card(
//       elevation: 3,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(15.0),
//       ),
//       child: Column(
//         children: <Widget>[
//           GestureDetector(
//             onTap: () {
//               Provider.of<Shops>(context).setcatfilt(shop.categories[0]);
//               print(Provider.of<Shops>(context).catfilt);

//               Navigator.of(context).push(
//                 MaterialPageRoute(
//                   builder: (ctx) => MyShop(id: shop.id),
//                 ),
//               );
//             },
//             child: Container(
//               // shape: RoundedRectangleBorder(
//               //   borderRadius: BorderRadius.circular(15.0),
//               // ),
//               // elevation: 5,
//               child: ListTile(
//                 leading: Container(
//                   // height: 100,
//                   // width: 100,
//                   child: Image.asset(
//                     'assets/images/logoholder.png',
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//                 title: Text(shop.name),
//                 subtitle: Text(shop.id),
//                 trailing: GestureDetector(
//                   onTap: () {
//                     print('hello');
//                     setState(() {
//                       _expanded = !_expanded;
//                     });
//                   },
//                   child: _expanded
//                       ? Icon(Icons.expand_less)
//                       : Icon(Icons.expand_more),
//                 ),
//               ),
//             ),
//           ),
//           if (_expanded) Divider(),
//           if (_expanded)
//             Container(
//               height: 50,
//               width: double.infinity,
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   mainAxisSize: MainAxisSize.max,
//                   children: <Widget>[
//                     Row(
//                       children: <Widget>[
//                         Icon(
//                           Icons.location_on,
//                           color: Color(0xFF45ADA8),
//                         ),
//                         SizedBox(
//                           width: 3,
//                         ),
//                         Text(
//                           'Location',
//                           style: TextStyle(fontSize: 15),
//                         ),
//                       ],
//                     ),
//                     Row(
//                       children: <Widget>[
//                         Icon(Icons.phone, color: Color(0xFF355C7D)),
//                         SizedBox(
//                           width: 3,
//                         ),
//                         Text(
//                           'Contact',
//                           style: TextStyle(fontSize: 15),
//                         ),
//                       ],
//                     ),
//                     Row(
//                       children: <Widget>[
//                         Icon(Icons.calendar_today, color: Color(0xFFE84A5F)),
//                         SizedBox(
//                           width: 3,
//                         ),
//                         Text(
//                           'Working hrs',
//                           style: TextStyle(fontSize: 15),
//                         )
//                       ],
//                     )
//                   ],
//                 ),
//               ),
//             )
//         ],
//       ),
//     );
//   }
// }
  }
}

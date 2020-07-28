import 'package:flutter/material.dart';
import 'package:menfashion/models/Shop.dart';
import 'package:menfashion/screens/shop_Screen.dart';
import 'package:provider/provider.dart';
import '../providers/shops.dart';
import 'myfavshop.dart';

class FavoritList extends StatelessWidget {
  final List<Shop> favlist;

  const FavoritList({Key key, this.favlist}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 5,
        ),
        // Divider(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Your favourite Shops',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                ),
              ),
              GestureDetector(
                onTap: () => print('See All'),
                child: Text(
                  'See All',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.0,
                  ),
                ),
              ),
            ],
          ),
          
        ),
        SizedBox(height: 10,),
        Container(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: favlist.length,
              itemBuilder: (BuildContext context, int index) {
                Shop shop = favlist[index];
                return GestureDetector(
        onTap: () {
          Provider.of<Shops>(context).setcatfilt(shop.categories[0]);
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) => MyShop(
                id: shop.id,
              ),
            ),
          );
        },

        // => Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (_) => DestinationScreen(
        //       destination: destination,
        //     ),
        //   ),
        // ),
        child: Card(
          elevation: 5,
          margin: EdgeInsets.all(10.0),
          // width: 210.0,
          child: Stack(
            alignment: Alignment.topCenter,
            children: <Widget>[
              Positioned(
                bottom: 15.0,
                child: Container(
                  height: 80,
                  width: 180.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    // borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              '${shop.name}',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w600,
                                // letterSpacing: 1,
                              ),
                            ),
                            Icon(
                              Icons.favorite,
                              color: Colors.red,
                            )
                          ],
                        ),
                        Text(
                          shop.id,
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0.0, 2.0),
                      blurRadius: 6.0,
                    ),
                  ],
                ),
                child: Stack(
                  children: <Widget>[
                    Image(
                      height: 100.0,
                      width: 180,
                      image: AssetImage('assets/images/shop.jpg'),
                      fit: BoxFit.cover,
                    ),
                    // Positioned(
                    //   left: 10.0,
                    //   bottom: 10.0,
                    //   child: Column(
                    //     crossAxisAlignment: CrossAxisAlignment.start,
                    //     children: <Widget>[
                    //       Text(
                    //         shop.name,
                    //         style: TextStyle(
                    //           color: Colors.white,
                    //           fontSize: 24.0,
                    //           fontWeight: FontWeight.w600,
                    //           letterSpacing: 1.2,
                    //         ),
                    //       ),
                    //       Row(
                    //         children: <Widget>[
                    //           Icon(
                    //             Icons.location_on,
                    //             size: 10.0,
                    //             color: Colors.white,
                    //           ),
                    //           SizedBox(width: 5.0),
                    //           Text(
                    //             shop.id,
                    //             style: TextStyle(
                    //               color: Colors.white,
                    //             ),
                    //           ),
                    //         ],
                    //       ),
                    //     ],
                    //   ),
                    // ),
                  ],
                ),
              )
            ],
          ),
        ),
                );
              },
            ),
          ),
      ],
    );
  }
}

//     Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: <Widget>[
//         SizedBox(
//           height: 10,
//         ),
//         Divider(
//           color: Colors.orange,
//         ),
//         Padding(
//           padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
//           child: Text('Your favorite shops',
//               style: TextStyle(
//                 fontSize: 18,
//                 fontWeight: FontWeight.bold,
//                 // color: Colors.grey
//                 color: Color(0xFFDDDDDA),
//               )),
//         ),
//         Container(
//             height: 250,
//             child: ListView.builder(
//               scrollDirection: Axis.horizontal,
//               itemCount: favlist.length,
//               itemBuilder: (ctx, i) => MyFavsshop(
//                 myfavshop: favlist[i],
//               ),
//             ),
//           )
//       ],
//     );
//   }
// }

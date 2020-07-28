import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:menfashion/providers/shops_provider.dart';
import 'package:menfashion/widgets/favorits_list.dart';
import 'package:menfashion/widgets/myfavshop.dart';
import 'package:provider/provider.dart';
import '../providers/new_item_list.dart';
import '../widgets/circle_item.dart';
import '../screens/search_screen.dart';
import '../providers/shops.dart';
import '../widgets/my_drawer.dart';
import '../widgets/first_customappbar.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:http/http.dart' as http;
import 'package:menfashion/models/category_model.dart';

// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FirstSreen extends StatefulWidget {
  static const routename = '/first_screen';

  @override
  _FirstSreenState createState() => _FirstSreenState();
}

class _FirstSreenState extends State<FirstSreen> {
  // Future<Category_list> allcat;

  // @override
  // void initState() {
  //   super.initState();

  //   // allcat = fetchcategories();

  //   Provider.of<ItemListProvider>(context).setcat();
  //   // all_categories = cat;
  // }

  @override
  Widget build(BuildContext context) {
    // print(allcat);
    // Provider.of<ItemListProvider>(context).setcat();

    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    final myfavorits = Provider.of<Shops>(context).favoitems;

    return Scaffold(
      appBar: AppBar(
        // elevation: 0,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: InkResponse(
            onTap: () => _scaffoldKey.currentState.openDrawer(),
            child: Icon(
              Icons.menu,
              size: 30.0,
              color: Colors.black,
            ),
          ),
        ),
        title: Image(
          image: AssetImage('assets/images/amazon_logo.jpg'),
          height: 30.0,
        ),
        centerTitle: true,
        actions: <Widget>[
          Stack(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 12.0, right: 20.0),
                child: InkResponse(
                  onTap: () async {
                    await Provider.of<ItemListProvider>(context)
                        .testgetcategories();
                  },
                  child: Icon(
                    Icons.favorite,
                    size: 30.0,
                    color: Colors.black87,
                  ),
                ),
              ),
              Positioned(
                bottom: 8.0,
                right: 16.0,
                child: Container(
                  height: 20.0,
                  width: 20.0,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Center(
                    child: Text(
                      '${myfavorits.length}',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {
                Provider.of<ItemListProvider>(context).changeindex(0);

                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => Search(id: '1'),
                  ),
                );
              },
              child: Icon(
                Icons.search,
                size: 30.0,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Color(0xFFF3F5F7),
      key: _scaffoldKey,
      drawer: Drawer(child: MyDrawer()),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  SizedBox(
                      height: 200.0,
                      width: double.infinity,
                      child: Carousel(
                        images: [
                          AssetImage('assets/images/shop.jpg'),
                          AssetImage('assets/images/shop.jpg'),
                          AssetImage('assets/images/shop.jpg'),

                          // NetworkImage('https://cdn-images-1.medium.com/max/2000/1*GqdzzfB_BHorv7V2NV7Jgg.jpeg'),
                          // NetworkImage('https://cdn-images-1.medium.com/max/2000/1*wnIEgP1gNMrK5gZU7QS0-A.jpeg'),
                          // ExactAssetImage("assets/images/LaunchImage.jpg")
                        ],
                        dotSize: 4.0,
                        dotSpacing: 15.0,
                        dotColor: Colors.lightGreenAccent,
                        indicatorBgPadding: 5.0,
                        dotBgColor: Colors.black45,
                        borderRadius: false,
                        autoplay: false,
                      )),
                  SizedBox(height: 15.0),

                  FutureBuilder(
                      future:
                          Provider.of<ItemListProvider>(context, listen: false)
                              .setcat(),
                      builder: ((BuildContext context, AsyncSnapshot snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return CircularProgressIndicator();
                          // Text(snapshot.data.categories[0].category_name);

                        } else {
                          if (snapshot.error != null) {
                            return Center(
                              child: Text('error occured'),
                            );
                          } else {
                            return Container(
                              height: 40,
                              width: double.infinity,
                              child: ListView.builder(
                                itemExtent: 100,
                                scrollDirection: Axis.horizontal,
                                itemCount:
                                    Provider.of<ItemListProvider>(context)
                                        .items
                                        .length,
                                itemBuilder: (ctx, i) {
                                  return GestureDetector(
                                    onTap: () {
                                      // Provider.of<Shops>(context)
                                      //     .filteredshops(names.items[i]);

                                      Provider.of<ItemListProvider>(context,
                                              listen: false)
                                          .changeindex(i);
                                          Provider.of<CatShops>(context).changeid(i+1);
                                      // Provider.of<ItemListProvider>(context,listen: false).change(title);
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              Search(id: (i + 1).toString()),
                                        ),
                                      );
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 5, vertical: 5),
                                      child: CircleItem(
                                        title: Provider.of<ItemListProvider>(
                                                context)
                                            .items[i],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            );
                          }
                        }
                      })),

                  // Consumer<ItemListProvider>(
                  //   builder: (_, names, ch) {
                  //     return Container(
                  //       height: 40,
                  //       width: double.infinity,
                  //       child: ListView.builder(
                  //         itemExtent: 100,
                  //         scrollDirection: Axis.horizontal,
                  //         itemCount: names.items.length,
                  //         itemBuilder: (ctx, i) {
                  //           return GestureDetector(
                  //             onTap: () {
                  //               Provider.of<Shops>(context)
                  //                   .filteredshops(names.items[i]);

                  //               Provider.of<ItemListProvider>(context,
                  //                       listen: false)
                  //                   .changeindex(i);
                  //               // Provider.of<ItemListProvider>(context,listen: false).change(title);
                  //               Navigator.of(context).push(
                  //                 MaterialPageRoute(
                  //                   builder: (context) => Search(),
                  //                 ),
                  //               );
                  //             },
                  //             child: Padding(
                  //               padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                  //               child: CircleItem(
                  //                 title: names.items[i],
                  //               ),
                  //             ),
                  //           );
                  //         },
                  //       ),
                  //     );
                  //   },
                  // ),
                  SizedBox(
                    height: 5,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            if (!myfavorits.isEmpty)
              Container(
                height: 300,
                color: Colors.white,
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: FavoritList(
                  favlist: myfavorits,
                ),
              ),
          ],
        ),
      ),
    );
  }
}

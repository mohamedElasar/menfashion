import 'package:flutter/material.dart';
import 'package:menfashion/models/piece_model.dart';
import 'package:menfashion/widgets/item_list.dart';
import 'package:provider/provider.dart';
import '../widgets/my_shop_bar.dart';
import '../providers/shops.dart';
import '../providers/new_item_list.dart';
import '../widgets/shop_item_list.dart';
import '../widgets/Grid_item.dart';
import '../providers/shops.dart';
import '../models/Shop.dart';

class MyShop extends StatelessWidget {
  static const routename = '/myshop';
  final String id;

  const MyShop({Key key, this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var myshop = Provider.of<Shops>(context).shopitem(id);
    var catfilter = Provider.of<Shops>(context).catfilt;
    print(catfilter);
    List<Piece> filteredpieces =
        Provider.of<Shops>(context).filtershoppieces(myshop, catfilter);
    // print(filteredpieces[0]);
    // Provider.of<ItemListProvider>(context).shoplistitems(myshop.categories);

    return Scaffold(
      backgroundColor: Color(0xFFF3F5F7),

      resizeToAvoidBottomInset: true,
      // appBar:
      //     // AppBar(title: Text('aaa'),)

      //     MyShopBar(
      //   height: 200,
      // ),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 200,
              floating: false,
              pinned: false,
              // snap: true,
              // leading: ,
              automaticallyImplyLeading: true,
              backgroundColor: Colors.white,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  'assets/images/logoholder.png',
                  fit: BoxFit.cover,
                ),
              ),
            )
          ];
        },
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              color: Colors.white,
              
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 40, 20, 5),
                    child: Row(
                      children: <Widget>[
                        Text(myshop.name),
                        Spacer(),
                        ChangeNotifierProvider.value(
                          value: myshop,
                          child: Consumer<Shop>(
                            builder: (_, shop, ch) => GestureDetector(
                              onTap: () {
                                shop.togglefavorit(id);
                              },
                              child: Provider.of<Shops>(context).isfavorit(id)
                                  ? Icon(
                                      Icons.favorite,
                                      size: 30,
                                      color: Colors.red,
                                    )
                                  : Icon(
                                      Icons.favorite_border,
                                      size: 30,
                                    ),
                            ),
                          ),
                        )
                        // child: Icon(Icons.favorite_border,size: 40,))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                    child: Text(
                      myshop.address,
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  Divider(),
                  ShopItemList(
              shoplistcat: myshop.categories,
            ),
                ],
              ),
            ),

            // Divider(
            //   thickness: 2,
            // ),
            
            // Divider(thickness: 2),
            Expanded(
              child: Container(
                // height: 400,
                child: GridView.builder(
                  itemCount: filteredpieces.length,
                  itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
                    value: filteredpieces[i],
                    child: GridItem(
                      myshop: myshop,
                      filteredpieces: filteredpieces,
                    ),
                  ),
                  padding: EdgeInsets.all(10),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 3 / 2.5,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

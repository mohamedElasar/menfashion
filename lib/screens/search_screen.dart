import 'package:flutter/material.dart';
import 'package:menfashion/screens/first_screen.dart';
import 'package:menfashion/screens/shop_Screen.dart';
import 'package:menfashion/widgets/Itemsandshops.dart';
import 'package:menfashion/widgets/custombar.dart';
import 'package:menfashion/widgets/future_shop_list.dart';
import 'package:menfashion/widgets/shop_card.dart';
import 'package:menfashion/widgets/shops_grid.dart';
import 'package:provider/provider.dart';
import 'package:flutter/animation.dart';
import '../providers/new_item_list.dart';
// import 'package:menfashion/models/item_list_model.dart';
// import 'package:menfashion/providers/items_list.dart';
// import 'package:menfashion/widgets/list_item.dart';
// import 'package:provider/provider.dart';
import '../widgets/item_list.dart';
import '../providers/shops.dart';
import '../providers/shops_provider.dart';
import 'package:menfashion/models/category_model.dart';

class Search extends StatelessWidget {
  // const name({Key key}) : super(key: key);

  static const routename = '/search';
  final id;

  Search({Key key, this.id}) : super(key: key);

  // bool loaded = false;

  // @override
  // void didChangeDependencies() {
  //   super.didChangeDependencies();
  //   if (!loaded) {
  //     _doctorsFuture = Provider.of<CatShops>(context).setshops(widget.id);
  //     setState(() {
  //       loaded = true;
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    // final mid =  Provider.of<CatShops>(context).id;
    // final _doctorsFuture = Provider.of<CatShops>(context).setshops(mid.toString());

    final myfavorits = Provider.of<Shops>(context).favoitems;
    List<String> mylist = Provider.of<ItemListProvider>(context).items;

    return SafeArea(
      child: Scaffold(
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.white,
            elevation: 6,
            child: Icon(
              Icons.add_location,
              size: 40,
              color: Colors.orange,
            ),
            onPressed: () {},
          ),
          backgroundColor: Color(0xFFF3F5F7),
          appBar: AppBar(
            // elevation: 0,
            backgroundColor: Colors.white,
            leading: Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: InkResponse(
                onTap: () => Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (_) => FirstSreen(),
                  ),
                ),
                child: Icon(Icons.arrow_back),
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
                      onTap: () {},
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
                child: InkResponse(
                  onTap: () => showSearch(
                      context: context, delegate: CustomSearchDelegate()),
                  child: Icon(
                    Icons.search,
                    size: 30.0,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          body:Items_Shops(categories: mylist)
         

          // 
          ),
    );
  }
}

class CustomSearchDelegate extends SearchDelegate {
  final cities = ['Town Team', 'sss'];
  final recenetcities = ['Town Team', 'sss'];
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    return null;
    // Center(
    //   child: Container(
    //     height: 30,
    //     width: 30,
    //     color: Colors.red,
    //     child: Text(query),
    //   ),
    // );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggetionlist = query.isEmpty
        ? recenetcities
        : cities.where((p) => p.startsWith(query)).toList();
    return ListView.builder(
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
          // Provider.of<Shops>(context).setcatfilt(shop.categories[0]);

          // showResults(context);
          // Provider.of<Shops>(context).filterbyname(suggetionlist[index]);
          // close(context, null);
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) => MyShop(
                id: Provider.of<Shops>(context).getshopid(suggetionlist[index]),
              ),
            ),
          );
        },
        child: ListTile(
          leading: Icon(Icons.loop),
          title: RichText(
            text: TextSpan(
                text: suggetionlist[index].substring(0, query.length),
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                children: [
                  TextSpan(
                      text: suggetionlist[index].substring(query.length),
                      style: TextStyle(color: Colors.grey))
                ]),
          ),
        ),
      ),
      itemCount: suggetionlist.length,
    );
  }
}

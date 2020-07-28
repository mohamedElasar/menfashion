import 'package:flutter/material.dart';
import 'package:menfashion/providers/new_item_list.dart';
import 'package:menfashion/providers/shops_provider.dart';
import 'package:menfashion/widgets/shop_card.dart';
import 'package:provider/provider.dart';

class Items_Shops extends StatefulWidget {
  final List<String> categories;

  const Items_Shops({Key key, this.categories}) : super(key: key);
  @override
  _Items_ShopsState createState() => _Items_ShopsState();
}

class _Items_ShopsState extends State<Items_Shops> {
  bool start = true;
  bool loaded = false;

  int _selectedindex;
  _onSelected(int index) {
    setState(() {
      _selectedindex = index;
      Provider.of<CatShops>(context).changeid(index+1);
    });
  }

  @override
  void didChangeDependencies() {
    if (start == true) {
      _selectedindex = Provider.of<ItemListProvider>(context).selectedindex;
    }
    start = false;
    // if (loaded) {
    //   Provider.of<CatShops>(context)
    //       .setshops(Provider.of<CatShops>(context).id.toString());
    //   setState(() {
    //     loaded = false;
    //   });
    // }
    super.didChangeDependencies();
  }

  // Future _doctorsFuture;

  @override
  Widget build(BuildContext context) {
    Provider.of<CatShops>(context)
          .setshops(Provider.of<CatShops>(context).id.toString());
    return Container(
      height: 400,
        child: Column(
      children: <Widget>[
        Container(
          height: 50,
          color: Colors.orange,
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: widget.categories.length,
            itemBuilder: (ctx, i) => GestureDetector(
              onTap: () {
                _onSelected(i);

                // Provider.of<CatShops>(context).loading = true;
                Provider.of<CatShops>(context).changeid(i + 1);
                // Provider.of<CatShops>(context).loading = false;
              },
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                decoration: _selectedindex != null && _selectedindex == i
                    ? BoxDecoration(
                        // borderRadius: BorderRadius.circular(10),
                        border: Border(
                            bottom: BorderSide(
                          width: 4,
                          color: Colors.white,
                        )),
                        color: Colors.orange[400])
                    : null,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: Text(
                    widget.categories[i],
                    style: _selectedindex != null && _selectedindex == i
                        ? TextStyle(color: Colors.white, fontSize: 22)
                        : TextStyle(fontSize: 22, color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
        ),
        loaded
            ? CircularProgressIndicator()
            : Expanded(
                child: ListView.builder(
                  itemCount: Provider.of<CatShops>(context).shops.length,
                  itemBuilder: (ctx, i) {
                    return ChangeNotifierProvider.value(
                      value: Provider.of<CatShops>(context).shops[i],
                      child: ShopCard(),
                    );
                  },
                ),
              ),
      ],
    ));
  }
}

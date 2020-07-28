import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/shops_provider.dart';
import '../widgets/shop_card.dart';

class ShopList extends StatefulWidget {
  @override
  _ShopListState createState() => _ShopListState();
}

class _ShopListState extends State<ShopList> {
  bool loaded = true;
  // Future _doctorsFuture;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (loaded) {
      Provider.of<CatShops>(context)
          .setshops(Provider.of<CatShops>(context).id.toString());
      setState(() {
        loaded = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return loaded
        ? Center(
            child: CircularProgressIndicator(),
          )
        : Expanded(
            child: Container(
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
          );
  }
}

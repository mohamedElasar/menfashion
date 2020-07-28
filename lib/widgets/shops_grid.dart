import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/piece_model.dart';
import '../providers/shops.dart';

class ShopsGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final shop = Provider.of<Shops>(context);
    // final filteredpieces = Provider.of<Pieces>(context).filterByGov(gov)

    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
          onTap: () {},
          child: Image.asset('assets/images/logoholder.png')
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black45,
          title: Text(
            'test',
            textAlign: TextAlign.center,
          ),
        ),
        // footer: GridTileBar(
        //   leading: Consumer<Product>(
        //     builder: (ctx, product, child) => IconButton(
        //         color: Theme.of(context).accentColor,
        //         icon: Icon(product.isFavorite
        //             ? Icons.favorite
        //             : Icons.favorite_border),
        //         onPressed: () {
        //           product.togglefavoritstatus(
        //               tokendata.token, tokendata.userID);
        //         }),
        //   ),
        //   backgroundColor: Colors.black87,
        //   title: Text(
        //     product.title,
        //     textAlign: TextAlign.center,
        //   ),
        //   trailing: IconButton(
        //       color: Theme.of(context).accentColor,
        //       icon: Icon(Icons.shopping_cart),
        //       onPressed: () {
        //         cart.addItem(product.id, product.title, product.price);
        //         Scaffold.of(context).removeCurrentSnackBar();
        //         Scaffold.of(context).showSnackBar(
        //           SnackBar(
        //             content: Text(
        //               'Item added to the cart',
        //               textAlign: TextAlign.left,
        //             ),
        //             duration: Duration(seconds: 2),
        //             action: SnackBarAction(
        //               label: 'UNDO',
        //               onPressed: () {
        //                 cart.removesingleitem(product.id);
        //               },
        //             ),
        //           ),
        //         );
        //       }),
        // ),
      ),
    );
  }
}

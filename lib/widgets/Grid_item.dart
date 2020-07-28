import 'package:flutter/material.dart';
import 'package:menfashion/models/Shop.dart';
import 'package:menfashion/screens/piece_show.dart';
import 'package:provider/provider.dart';
import '../models/piece_model.dart';
import '../providers/pieces.dart';

class GridItem extends StatelessWidget {
  final Shop myshop;
  final List<Piece> filteredpieces;

  const GridItem({Key key, this.myshop, this.filteredpieces}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final piece = Provider.of<Piece>(context);
    // final filteredpieces = Provider.of<Pieces>(context).filterByGov(gov)

    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (ctx) => ChangeNotifierProvider.value(
              value: piece,
              child: PieceShow(
                mypiece: piece,
                myshop: myshop,
                mypieces: filteredpieces,
              ),
            ),
          ),
        );
      },
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(20)),
        child: GridTile(
          child: piece.imageurl == null
              ? Image.asset(
                  'assets/images/placeholder.jpg',
                  fit: BoxFit.cover,
                )
              : Image.network(piece.imageurl),
          footer: GridTileBar(
            leading: Row(
              children: <Widget>[
                Icon(
                  Icons.attach_money,
                  color: Colors.white,
                ),
                Text(
                  '22',
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
            backgroundColor: Colors.black38,
            title: Text(
              piece.id,
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
      ),
    );
  }
}

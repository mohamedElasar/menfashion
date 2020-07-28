import 'package:flutter/material.dart';
import 'package:menfashion/providers/shops.dart';
import 'package:provider/provider.dart';
import '../models/item_list_model.dart';
// import '../providers/items_list.dart';
import '../providers/shop_item_list_provider.dart';

// enum Choice {
//   All,
//   Men,
//   Women,
//   Kids,
//   Shoses,
//   Others,
// }

class ShopItemList extends StatefulWidget {
  final List<String> shoplistcat;

  const ShopItemList({Key key, this.shoplistcat}) : super(key: key);

  @override
  _ItemListState createState() => _ItemListState();
}

class _ItemListState extends State<ShopItemList> {
  int _selectedindex = 0;
  String catstring;

  // String _catstring = widget.shoplistcat[0];
  _onSelected(int index) {
    setState(
      () => _selectedindex = index,
    );
    Provider.of<Shops>(context).setcatfilt(widget.shoplistcat[_selectedindex]);
  }

  // @override
  // void initState() {
  //   catstring = widget.shoplistcat[_selectedindex];

  //   // catstring = widget.shoplistcat[_selectedindex];
  //   Provider.of<Shops>(context).setcatfilt(catstring);

  //   super.initState();
  // }

  @override
  void didChangeDependencies() {
    catstring = widget.shoplistcat[_selectedindex];

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    // print(catstring);
    // Provider.of<ItemListProvider>(context).shoplistitems(['All', 'Men', 'Women', 'Kids', 'Shoes', 'Others']);
    // var data = Provider.of<ItemListProvider>(context);
    // var additems =
    //     data.shoplistitems(['All', 'Men', 'Women', 'Kids', 'Shoes', 'Others']);
    // var choose = data.listitems;

    // var choose = widget.shoplistcat[1];
    //  var mychoice = Provider.of<ItemListProvider>(context).change(i);

    return Container(
        height: 50,
        // color: Colors.orange,
        alignment: Alignment.center,
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: widget.shoplistcat.length,
          itemBuilder: (ctx, i) => GestureDetector(
            onTap: () {
              _onSelected(i);
            },
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 3),
              decoration: _selectedindex != null && _selectedindex == i
                  ? BoxDecoration(
                    // borderRadius: BorderRadius.circular(10),
                    border: Border(bottom: BorderSide(width: 4,color: Colors.white,)),
                    color: Colors.orange[400])
                  : null,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: Text(widget.shoplistcat[i],
                 style:  _selectedindex != null && _selectedindex == i?TextStyle(color: Colors.white,fontSize: 22):TextStyle(fontSize: 22,color: Colors.black),),
              ),
            ),
          ),
        ));

    // child: SingleChildScrollView(
    //   scrollDirection: Axis.horizontal,
    //   child: Row(
    //     mainAxisAlignment: MainAxisAlignment.spaceAround,
    //     children: <Widget>[
    //       MyContainer(
    //         choice: choose == Choice.All,
    //         function: () {
    //           Provider.of<ItemListProvider>(context).change(Choice.All);
    //         },
    //         text: 'ALL',
    //       ),
    //       MyContainer(
    //         choice: choose == Choice.Men,
    //         function: () {
    //           Provider.of<ItemListProvider>(context).change(Choice.Men);

    //         },
    //         text: 'Men',
    //       ),
    //       MyContainer(
    //         choice: choose == Choice.Women,
    //         function: () {
    //           Provider.of<ItemListProvider>(context).change(Choice.Women);
    //         },
    //         text: 'Women',
    //       ),
    //       MyContainer(
    //         choice: choose == Choice.Kids,
    //         function: () {
    //           Provider.of<ItemListProvider>(context).change(Choice.Kids);
    //         },
    //         text: 'Kids',
    //       ),
    //       MyContainer(
    //         choice: choose == Choice.Shoses,
    //         function: () {
    //           Provider.of<ItemListProvider>(context).change(Choice.Shoses);
    //         },
    //         text: 'Shoses',
    //       ),
    //       MyContainer(
    //         choice: choose == Choice.Others,
    //         function: () {
    //           Provider.of<ItemListProvider>(context).change(Choice.Others);
    //         },
    //         text: 'Others',
    //       ),

    //       // GestureDetector(
    //       //   onTap: () {
    //       //     setState(() {
    //       //       choose = Choice.Men;
    //       //     });
    //       //   },
    //       //   child: Container(
    //       //     decoration: choose == Choice.Men
    //       //         ? BoxDecoration(color: Colors.white.withOpacity(.5))
    //       //         : BoxDecoration(color: Colors.white.withOpacity(1)),
    //       //     child: Text('Men'),
    //       //   ),
    //       // ),
    //       // Container(
    //       //   decoration: choose == Choice.Women
    //       //       ? BoxDecoration(color: Colors.white.withOpacity(.5))
    //       //       : BoxDecoration(color: Colors.white.withOpacity(1)),
    //       //   child: Text('Women'),
    //       // ),
    //       // Container(
    //       //   decoration: choose == Choice.Kids
    //       //       ? BoxDecoration(color: Colors.white.withOpacity(.5))
    //       //       : BoxDecoration(color: Colors.white.withOpacity(1)),
    //       //   child: Text('Kids'),
    //       // ),
    //       // Container(
    //       //   decoration: choose == Choice.Shoses
    //       //       ? BoxDecoration(color: Colors.white.withOpacity(.5))
    //       //       : BoxDecoration(color: Colors.white.withOpacity(1)),
    //       //   child: Text('Shoses'),
    //       // ),
    //       // Container(
    //       //   decoration: choose == Choice.Others
    //       //       ? BoxDecoration(color: Colors.white.withOpacity(.5))
    //       //       : BoxDecoration(color: Colors.white.withOpacity(1)),
    //       //   child: Text('Others'),
    //       // ),
    //     ],
    //   ),
    // ),
  }
}

// class MyContainer extends StatelessWidget {
//   const MyContainer({
//     Key key,
//     @required this.choice,
//     @required this.function,
//     @required this.text,
//   }) : super(key: key);

//   final bool choice;
//   final Function function;
//   final String text;

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: function,
//       child: Container(
//         padding: EdgeInsets.symmetric(horizontal: 8, vertical: 3),
//         decoration: choice
//             ? BoxDecoration(
//                 borderRadius: BorderRadius.circular(10), color: Colors.orange)
//             : null,
//         child: Text(text),
//       ),
//     );
//   }
// }

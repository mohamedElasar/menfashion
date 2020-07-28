import 'package:flutter/material.dart';
import 'package:menfashion/widgets/circle_item.dart';
import 'package:provider/provider.dart';
import '../models/item_list_model.dart';
// import '../providers/items_list.dart';
import '../providers/new_item_list.dart';
import '../providers/shops.dart';
import '../providers/shops_provider.dart';



class ItemList extends StatefulWidget {

  final List<String> categories;

  const ItemList({Key key, this.categories}) : super(key: key);

  @override
  _ItemListState createState() => _ItemListState();
}

class _ItemListState extends State<ItemList> {
  bool start = true;

  int _selectedindex;
  _onSelected(int index) {
    setState(() => _selectedindex = index);
  }

  @override
  void didChangeDependencies() {
    if (start == true) {
      _selectedindex = Provider.of<ItemListProvider>(context).selectedindex;
    }
    start = false;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    // widget.index;
    // Provider.of<ItemListProvider>(context).shoplistitems(['All', 'Men', 'Women', 'Kids', 'Shoes', 'Others']);
    // var data = Provider.of<ItemListProvider>(context);
    // var additems =
    //     data.shoplistitems(['All', 'Men', 'Women', 'Kids', 'Shoes', 'Others']);
    // var choose = data.listitems;
    //  var mychoice = Provider.of<ItemListProvider>(context).change(i);

    return Container(
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
            Provider.of<CatShops>(context).changeid(i+1);
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
    );
  }
}

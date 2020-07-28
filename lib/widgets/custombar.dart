import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/shops.dart';
import '../screens/shop_Screen.dart';
import '../screens/first_screen.dart';

class CustomBarWidget extends StatelessWidget implements PreferredSizeWidget {
  // GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  final double height;

  const CustomBarWidget({Key key, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      child: Stack(
        children: <Widget>[
          Container(
            height: height,
            width: double.infinity,
            decoration: BoxDecoration(color: Color(0xFF547980)
                // gradient: LinearGradient(
                //   begin: Alignment.topLeft,
                //   end: Alignment.bottomRight,
                //   colors: [Color(0xFF594F4F), Color(0xFF547980)],
                // ),
                ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: Column(
              children: <Widget>[
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: Row(
                    // mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        width: 30,
                        child: GestureDetector(
                          onTap: () {
                            // _scaffoldKey.currentState.openDrawer();
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (ctx) => FirstSreen()));
                          },
                          child: Icon(
                            Icons.home,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ),
                      // Spacer(),
                      Container(
                        // width: 20,
                        child: Text(
                          'STYLE',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Container(
                        width: 30,
                      ),
                    ],
                  ),
                ),

                Row(
                  children: <Widget>[
                    SizedBox(width: 20),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          showSearch(
                              context: context,
                              delegate: CustomSearchDelegate());
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey, width: 1),
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.transparent),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 15),
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.search,
                                  color: Colors.white,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  'search ...',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    )
                  ],
                ),
                // SizedBox(
                //   height: 00,
                // ),
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
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
              builder: (ctx) =>
               MyShop(
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

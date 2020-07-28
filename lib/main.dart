import 'package:flutter/material.dart';
import 'package:menfashion/models/item_list_model.dart';
import 'package:menfashion/models/shop_model.dart';
import 'package:menfashion/providers/navigator_taps.dart';
import 'package:menfashion/providers/shops.dart';
import 'package:menfashion/providers/shops_provider.dart';
import 'package:menfashion/screens/first_screen.dart';
import 'package:menfashion/screens/piece_show.dart';
import 'package:menfashion/screens/shop_Screen.dart';
import 'package:provider/provider.dart';
import 'package:custom_navigator/custom_navigation.dart';

import './screens/search_screen.dart';

import './providers/govitems.dart';
import './providers/pieces.dart';
import './providers/new_item_list.dart';
import './models/Shop.dart';

// import './widgets/GovCard.dart';
//test

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: GovItems(),
        ),
        // ChangeNotifierProvider.value(
        //   value: Pieces(),
        // ),
        ChangeNotifierProvider.value(
          value: ItemListProvider(),
        ),
        ChangeNotifierProvider.value(
          value: Shops(),
        ),
        ChangeNotifierProvider.value(
          value: Navigation(),
        ),
        ChangeNotifierProvider.value(
          value: Shop_model(),
        ),
        ChangeNotifierProvider.value(
          value: CatShops(),
        )

        // ChangeNotifierProvider.value(
        //   value: Shop(),
        // ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'men fashion',
        theme: ThemeData(
          primarySwatch: Colors.orange,
          accentColor: Colors.yellowAccent,
          textTheme: ThemeData.light().textTheme.copyWith(
                title: TextStyle(fontSize: 20, color: Colors.black),
                body1: TextStyle(
                    fontSize: 20,
                    // fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
        ),
        home: HomeScreen(),
        routes: {
          // ItemsScreen.routeName: (ctx) => ItemsScreen(),
          Search.routename: (ctx) => Search(),
          FirstSreen.routename: (ctx) => FirstSreen(),
          MyShop.routename: (ctx) => MyShop(),
          PieceShow.routeName: (ctx) => PieceShow(),
        },
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Map<String, Object>> _pages = [
    {'page': FirstSreen()},
    {'page': Search()},
    {'page': Search()}
  ];

  // void _selectpage

  GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    var _selectedpage = Provider.of<Navigation>(context).selectedpage;

    return Scaffold(
        // bottomNavigationBar: BottomNavigationBar(
        //   // backgroundColor: Colors.orange,
        //   currentIndex: _selectedpage,
        //   backgroundColor: Colors.black,
        //   selectedItemColor: Colors.white,
        //   unselectedItemColor: Colors.grey,

        //   items: _items,
        //   onTap: (int index) {
        //     navigatorKey.currentState.maybePop();

        //     Provider.of<Navigation>(context, listen: false).changeindex(index);
        //     Provider.of<ItemListProvider>(context, listen: false).change('All');
        //   },
        // ),
        // appBar: AppBar(
        //   title: Text('Men Fashion'),
        //   actions: <Widget>[
        //     IconButton(
        //       icon: Icon(Icons.more_vert),
        //       onPressed: () {},
        //     )
        //   ],
        // ),
        drawer: Drawer(),
        body: CustomNavigator(
          navigatorKey: navigatorKey,
          home: FirstSreen(),
          pageRoute: PageRoutes.materialPageRoute,
        )

        // _pages[_selectedpage]['page'],

        // bottomNavigationBar: BottomNavigationBar(

        //   onTap: _selectpage,
        // //   backgroundColor: Colors.orange,
        // //   currentIndex: _selectedpage,
        // //   items: [
        // BottomNavigationBarItem(
        //   icon: Icon(
        //     Icons.home,
        //     color: Colors.black,
        //   ),
        //   title: Text(
        //     'Home',
        //     style: TextStyle(color: Colors.black),
        //   ),
        // ),
        // BottomNavigationBarItem(
        //   icon: Icon(
        //     Icons.search,
        //     color: Colors.black,
        //   ),
        //   title: Text(
        //     'Search',
        //     style: TextStyle(color: Colors.black),
        //   ),
        // ),
        // BottomNavigationBarItem(
        //   icon: Icon(
        //     Icons.favorite,
        //     color: Colors.black,
        //   ),
        //   title: Text(
        //     'Favorits',
        //     style: TextStyle(color: Colors.black),
        //   ),
        // )
        //   ],
        // ),

        //  Column(
        //   children: <Widget>[
        //     SizedBox(
        //       height: 20,
        //     ),
        //     GestureDetector(
        //       onTap: () {
        //         Navigator.of(context).pushNamed(Search.routename);
        //       },
        //       child: Text(
        //         'Our Service Available in',
        //         style: Theme.of(context).textTheme.title,
        //       ),
        //     ),
        //     SizedBox(
        //       height: 20,
        //     ),
        //     GovCard(),
        //   ],
        // ),
        );
  }

  final _items = [
    BottomNavigationBarItem(
      icon: Icon(
        Icons.home,
        // color: Colors.black,
      ),
      title: Text(
        'Home',
        // style: TextStyle(color: Colors.black),
      ),
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.search,
        // color: Colors.black,
      ),
      title: Text(
        'Search',
        // style: TextStyle(color: Colors.black),
      ),
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.favorite,
        // color: Colors.black,
      ),
      title: Text(
        'Favorits',
        // style: TextStyle(color: Colors.black),
      ),
    )
  ];
}

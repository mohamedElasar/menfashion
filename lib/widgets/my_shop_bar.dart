import 'package:flutter/material.dart';

class MyShopBar extends StatelessWidget implements PreferredSizeWidget {
  // GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  final double height;

  const MyShopBar({Key key, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      child: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: height,
            child: Image.asset(
              'assets/images/logoholder.png',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}

import 'package:flutter/material.dart';
import 'package:menfashion/models/Shop.dart';
import 'package:menfashion/screens/shop_Screen.dart';
import 'package:provider/provider.dart';
import '../providers/shops.dart';

class MyFavsshop extends StatelessWidget {
  final Shop myfavshop;

  const MyFavsshop({Key key, this.myfavshop}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: GestureDetector(
        onTap: () {
          Provider.of<Shops>(context).setcatfilt(myfavshop.categories[0]);
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) => MyShop(
                id: myfavshop.id,
              ),
            ),
          );
        },
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ClipRRect(
                borderRadius: new BorderRadius.circular(20.0),
                child: Image.asset(
                  'assets/images/logoholder.png',
                  fit: BoxFit.cover,
                  height: 100,
                  width: 200,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                width: 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          myfavshop.name,
                          style: TextStyle(color: Colors.white),
                        ),
                        Spacer(),
                        // SizedBox(width:20),
                        Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 30,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      myfavshop.address,
                      style: TextStyle(
                        // color: Colors.black
                        color: Color(0xFFDDDDDA)
                        ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

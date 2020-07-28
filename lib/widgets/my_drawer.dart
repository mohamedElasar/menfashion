import 'package:flutter/material.dart';
import 'package:menfashion/screens/auth_Screen.dart';
import 'package:menfashion/screens/search_screen.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 100,
          width: double.infinity,
          child: Image.asset(
            'assets/images/placeholder.jpg',
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 5),
        Text('STYLE'),
        SizedBox(
          height: 5,
        ),
        Expanded(
          child: ListView(
            children: <Widget>[
              GestureDetector(
                onTap: () {},
                child: RawChip(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (ctx) => LoginScreen()));
                  },
                  backgroundColor: Color(0xFF2F9599),
                  label: Text(
                    'Login or Register',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              Divider(),
              ListTile(
                leading: Icon(
                  Icons.home,
                  size: 30,
                ),
                title: Text(
                  'Home',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (ctx) => Search()));
                },
                child: ListTile(
                  leading: Icon(
                    Icons.search,
                    size: 30,
                  ),
                  title: Text(
                    'Search',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.favorite,
                  size: 30,
                ),
                title: Text(
                  'Favorites',
                  style: TextStyle(fontSize: 20),
                ),
              ),

              ListTile(
                leading: Icon(
                  Icons.local_offer,
                  size: 30,
                ),
                title: Text(
                  'Offers near you',
                  style: TextStyle(fontSize: 20),
                ),
              ),

              Divider(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Choose language',
                      style: TextStyle(fontSize: 17, color: Color(0xFF547980)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Contact us',
                        style:
                            TextStyle(fontSize: 17, color: Color(0xFF547980))),
                    SizedBox(
                      height: 10,
                    ),
                    Text('About us',
                        style:
                            TextStyle(fontSize: 17, color: Color(0xFF547980))),
                  ],
                ),
              )
              // ListTile(
              //   // isThreeLine: false,
              //   title: Text('Choose language'),
              // ),
              // ListTile(
              //   // isThreeLine: false,
              //   title: Text('Choose language'),
              // ),
              // ListTile(
              //   // isThreeLine: false,
              //   title: Text('Choose language'),
              // )
              // // Text('choose language'),
              // SizedBox(height: 5,),
              // Text('Contact'),
              // SizedBox(height: 5,),
              // Text('About us')
            ],
          ),
        )
      ],
    );
  }
}

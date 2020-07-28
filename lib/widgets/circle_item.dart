import 'package:flutter/material.dart';
import '../screens/search_screen.dart';
import 'package:provider/provider.dart';
import '../providers/navigator_taps.dart';
import '../providers/new_item_list.dart';

class CircleItem extends StatelessWidget {
  final String title;

  const CircleItem({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      
      elevation: 10,
      borderRadius: BorderRadius.circular(15),
      color: Colors.orange,
      child: Container(
        // margin: EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(borderRadius:BorderRadius.circular(15),
        color: Colors.orange),
        alignment: Alignment.center,
        child: Text(title),),);
    
    //  RaisedButton(
    //     shape:  RoundedRectangleBorder(
    //         borderRadius:  BorderRadius.circular(18.0),
    //         side: BorderSide(color: Colors.orange)),
    //     onPressed: () {},
    //     color: Colors.orange,
    //     textColor: Colors.white,
    //     child: Text(title,
    //         style: TextStyle(fontSize: 15)),
    //   );

    //  Column(
    //   children: <Widget>[
    //     CircleAvatar(
    //       radius: 35,
    //       // backgroundImage: AssetImage('assets/images/logoholder.png')
    //       backgroundColor: Color(0x40547980),
    //       child: Icon(Icons.favorite_border,color: Colors.black,size: 30,),
    //     ),
    //     SizedBox(
    //       height: 5,
    //     ),
    //     Text(title,style: TextStyle(color: Colors.black,fontSize: 15))
    //   ],
    // );
  }
}

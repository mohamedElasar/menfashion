// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// import '../screens/items_screen.dart';
// import '../providers/govitems.dart';

// class GovCard extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final govdata = Provider.of<GovItems>(context).governorates;

//     return Expanded(
//       child: ListView.builder(
//         itemCount: govdata.length,
//         itemBuilder: (ctx, i) => GestureDetector(
//           onTap: () {
//             Navigator.of(context)
//                 .pushNamed(ItemsScreen.routeName, arguments: govdata[i].id);
//           },
//           child: Card(
//             elevation: 3,
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Container(
//                 alignment: Alignment.centerLeft,
//                 height: 100,
//                 width: double.infinity,
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: <Widget>[
//                     RawChip(
//                       backgroundColor: Colors.orange.withOpacity(.5),
//                       avatar: Icon(
//                         Icons.place,
//                         color: Colors.grey,
//                       ),
//                       label: Text(
//                         govdata[i].name,
//                         style: Theme.of(context).textTheme.body1,
//                       ),
//                     ),
//                     Column(
//                       children: <Widget>[
//                         // Text('Brows By'),
//                         FlatButton.icon(
//                           icon: Icon(
//                             Icons.shop,
//                             color: Colors.orange,
//                           ),
//                           label: Text('Shops'),
//                           onPressed: () {},
//                         ),
//                         FlatButton.icon(
//                           icon: Icon(
//                             Icons.shopping_cart,
//                             color: Colors.orange,
//                           ),
//                           label: Text('items'),
//                           onPressed: () {
//                             Navigator.of(context).pushNamed(
//                                 ItemsScreen.routeName,
//                                 arguments: govdata[i].id);
//                           },
//                         ),
//                       ],
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

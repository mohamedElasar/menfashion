// import 'package:flutter/material.dart';
// import 'package:menfashion/autosearch/alexandria.dart';
// import 'package:provider/provider.dart';
// import 'package:autocomplete_textfield/autocomplete_textfield.dart';
// import '../providers/govitems.dart';
// import '../providers/pieces.dart';
// import '../widgets/Grid_item.dart';

// class ItemsScreen extends StatefulWidget {
//   static const routeName = '/item_screen';

//   @override
//   _ItemsScreenState createState() => _ItemsScreenState();
// }

// class _ItemsScreenState extends State<ItemsScreen> {
//   TextEditingController controller = TextEditingController();
//   AutoCompleteTextField searchtextfield;
//   GlobalKey<AutoCompleteTextFieldState> key = GlobalKey();
//   var filterbycity = false;

//   void _loadData() async {
//     await CityViewModel.loadAlex();
//     await CityViewModel.loadMnofia();
//   }

//   // void _loadDatam() async {}

//   // @override
//   // void didChangeDependencies() {
//   //  filterbycity ==true;
//   //   super.didChangeDependencies();
//   // }

//   @override
//   void initState() {
//     _loadData();
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     print(controller.text);

//     final idd = ModalRoute.of(context).settings.arguments;
//     final gov = Provider.of<GovItems>(context).findById(idd);
//     var pieces = filterbycity && controller.text.isEmpty == false
//         ? Provider.of<Pieces>(context).filterByCity(controller.text)
//         : Provider.of<Pieces>(context).filterByGov(gov.name);
//     var suggest = null;

//     switch (gov.name) {
//       case ('Alexandria'):
//         suggest = CityViewModel.alexandria;
//         break;
//       case ('Mnofia'):
//         suggest = CityViewModel.mnofia;
//         break;
//       default:
//     }

//     searchtextfield = AutoCompleteTextField(
//       clearOnSubmit: false,
//       key: key,
//       itemBuilder: (context, item) {
//         return Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: <Widget>[
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Text(
//                 item.autocompleteterm,
//                 style: TextStyle(fontSize: 20.0),
//               ),
//             ),
//             SizedBox(
//               width: 5,
//             ),
//             Icon(Icons.search),
//           ],
//         );
//       },
//       itemFilter: (item, query) {
//         return item.autocompleteterm
//             .toLowerCase()
//             .startsWith(query.toLowerCase());
//       },
//       itemSorter: (a, b) {
//         return a.autocompleteterm.compareTo(b.autocompleteterm);
//       },
//       controller: controller,
//       itemSubmitted: (item) {
//         setState(() {
//           filterbycity = true;
//           searchtextfield.textField.controller.text = item.autocompleteterm;
//         });
//         print(controller.text);
//       },
//       suggestions: suggest,
//       style: TextStyle(color: Colors.black, fontSize: 20.0),
//       decoration: InputDecoration(
//         suffixIcon: Container(
//           width: 85.0,
//           height: 60.0,
//         ),
//         contentPadding: EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 20.0),
//         filled: true,
//         hintText: 'Search by city',
//         hintStyle: TextStyle(color: Colors.black),
//       ),
//     );

//     return Scaffold(
//       appBar: AppBar(
//         title: Text(gov.name),
//       ),
//       body: Column(
//         children: <Widget>[
//           searchtextfield,
//           Expanded(
//             child: Container(
//               // height: 400,
//               child: GridView.builder(
//                 itemCount: pieces.length,
//                 itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
//                   value: pieces[i],
//                   child: GridItem(),
//                 ),
//                 padding: EdgeInsets.all(10),
//                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 2,
//                   childAspectRatio: 3 / 2,
//                   crossAxisSpacing: 10,
//                   mainAxisSpacing: 10,
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:menfashion/models/Shop.dart';
import 'package:menfashion/models/piece_model.dart';
import 'package:carousel_slider/carousel_slider.dart';

class PieceShow extends StatefulWidget {
  static const routeName = '/piece_show';
  final Piece mypiece;
  final Shop myshop;
  final List<Piece> mypieces;

  const PieceShow({Key key, this.mypiece, this.myshop, this.mypieces}) : super(key: key);

  @override
  _PieceShowState createState() => _PieceShowState();
}

class _PieceShowState extends State<PieceShow> {
  var _current;
  // int aa = widget.myshop.shopitems.indexOf(mypiece);
  @override
  void initState() {
    _current = widget.mypieces.indexOf(widget.mypiece);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // print(widget.myshop.id);
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: <Widget>[
            CarouselSlider(
              onPageChanged: (index) {
                setState(() {
                  _current = index;
                });
              },
              height: MediaQuery.of(context).size.height,
              viewportFraction: 1.0,
              initialPage: _current,
              items: <Widget>[
                // ..._myWidget(widget.myshop.shopitems.length),
                ...getwidgets(context, widget.mypieces)
              ],

              // child: PageView.builder(
              //   itemBuilder: (ctx, i) => Container(
              //     child: Image.asset(
              //       'assets/images/logoholder.png',
              //       fit: BoxFit.cover,
              //     ),
              //   ),
              //   itemCount: 3,
              // ),
            ),
            Positioned(
              bottom: 60.0,
              left: .1 * MediaQuery.of(context).size.width,
              child: Container(
                height: 3,
                width: .8 * MediaQuery.of(context).size.width,
                child: Row(
                  children: <Widget>[
                    ...widget.mypieces.map(
                      (cont) => Expanded(
                        child: Container(
                          // width: 50,
                          // height: 2,
                          decoration: BoxDecoration(
                              color: _current ==
                                      widget.mypieces.indexOf(cont)
                                  ? Colors.grey[100]
                                  : Colors.grey[600]),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              top: 40,
              left: .1 * MediaQuery.of(context).size.width,
              child: GestureDetector(
                onTap: (){
                  Navigator.of(context).pop();
                },
                              child: Icon(
                  Icons.arrow_back,
                  size: 30,
                  color: Colors.white,
                ),
              ),
            ),
            // Positioned(
            //   bottom: 0,
            //   left: 0,
            //   child: Container(
            //     height: 40,
            //     width: MediaQuery.of(context).size.width,
            //     color: Colors.black45,
            //     child: Align(
            //       alignment: Alignment.center,
            //       child: Text(
            //         'aaaa',
            //         style: TextStyle(color: Colors.white),
            //       ),
            //     ),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}

List<Widget> _myWidget(int count) {
  return List.generate(
    count,
    (i) => Container(
      child: Image.asset(
        'assets/images/logoholder.png',
        fit: BoxFit.cover,
      ),
    ),
  ).toList(); // replace * with your rupee or use Icon instead
}

List<Widget> getwidgets(BuildContext context, List<Piece> pieces) {
  return pieces
      .map(
        (item) => Container(
          child: Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  'assets/images/logoholder.png',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                child: Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.black45,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      item.id,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      )
      .toList();
}

import 'dart:math';
import 'package:flutter/material.dart';
import 'tabs/first.dart';
import 'tabs/second.dart';
import 'tabs/third.dart';
import 'tabs/four.dart';
import 'tabs/five.dart';

class screenDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      home: new MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

/// An indicator showing the currently selected page of a PageController
class DotsIndicator extends AnimatedWidget {
  DotsIndicator({
    this.controller,
    this.itemCount,
    this.onPageSelected,
    this.color: Colors.white,
  }) : super(listenable: controller);

  /// The PageController that this DotsIndicator is representing.
  final PageController controller;

  /// The number of items managed by the PageController
  final int itemCount;

  /// Called when a dot is tapped
  final ValueChanged<int> onPageSelected;

  /// The color of the dots.
  ///
  /// Defaults to `Colors.white`.
  final Color color;

  // The base size of the dots
  static const double _kDotSize = 8.0;

  // The increase in the size of the selected dot
  static const double _kMaxZoom = 2.0;

  // The distance between the center of each dot
  static const double _kDotSpacing = 25.0;



  Widget build(BuildContext context) {
    return new Stack(
      children: <Widget>[
        new Positioned(
            bottom: 0.0,
            left: 0.0,
            right: 0.0,
            child:  new Container(
                color: Colors.white,
                child: new Container(
                  margin: new EdgeInsets.only(bottom : 10.0),
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      new Column(
                        //mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new IconButton(
                              icon: new Icon(
                                Icons.calendar_today,
                                size: 35.0,
                                color: Colors.grey,
                              ),
                              onPressed: () => onPageSelected(0)
                          ),
                          new Text("Lịch khám", style: new TextStyle(fontSize: 8.0),),
                        ],
                      ),
                      new Column(
                        //mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new IconButton(
                              icon: Icon(
                                Icons.perm_identity,
                                size: 35.0,
                                color: Colors.grey,
                              ),
                              onPressed: () => onPageSelected(1)
                          ),
                          new Text("TT Cá nhân", style: new TextStyle(fontSize: 8.0),),
                        ],
                      ),
                      new Column(
                        //mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new IconButton(
                            icon: Icon(
                              Icons.perm_identity,
                              size: 35.0,
                              color: Colors.transparent,
                            ),
                            //onPressed: () => onPageSelected(1)
                          ),
                          //new Text("TT Cá nhân", style: new TextStyle(fontSize: 8.0),),
                        ],
                      ),
                      new Column(
                        //mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new IconButton(
                              icon: Icon(
                                Icons.menu,
                                size: 35.0,
                                color: Colors.grey,
                              ),
                              onPressed: () => onPageSelected(3)
                          ),
                          new Text("Thêm", style: new TextStyle(fontSize: 8.0),),
                        ],
                      ),
                      new Column(
                        //mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new IconButton(
                              icon: Icon(
                                Icons.settings,
                                size: 35.0,
                                color: Colors.grey,
                              ),
                              onPressed: () => onPageSelected(4)
                          ),
                          new Text("Cài đặt", style: new TextStyle(fontSize: 8.0),),
                        ],
                      ),
                    ],
                  ),
                )
            )
        ),
        new Positioned(
            bottom: 5.0,
            left: MediaQuery.of(context).size.width/2-30,
            child:  new Row(
              mainAxisAlignment:  MainAxisAlignment.center,
              children: <Widget>[
                new Container(
                  margin : new EdgeInsets.only(top: 0.0,bottom: 20.0),
                  width: 70.0,
                  height: 70.0,
                  decoration: new BoxDecoration(
                    //color: const Color(0xFFEEEEEE),
                    color: Colors.red,
                    borderRadius: new BorderRadius.all(new Radius.circular(50.0)),
                    border: new Border.all(
                      color: const Color(0xFFEEEEEE),
                      width: 5.0,
                    ),
                  ),
                  child: new IconButton(
                    //alignment: new Alignment(20.0, 20.0),
                      icon: Icon(
                        Icons.card_giftcard,
                        size: 45.0,
                      ),
                      onPressed:() => onPageSelected(2)
                  ),
                ),
              ],
            )
        )
      ],
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State createState() => new MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {

  final _controller = new PageController();

  static const _kDuration = const Duration(milliseconds: 300);

  static const _kCurve = Curves.ease;

  final _kArrowColor = Colors.black.withOpacity(0.8);

  final List<Widget> _pages = <Widget>[
    new First(),
    new Second(),
    new Third(),
    new Four(),
    new Five(),
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new IconTheme(
        data: new IconThemeData(color: _kArrowColor),
        child: new Stack(
          children: <Widget>[
            new PageView.builder(
              physics: new AlwaysScrollableScrollPhysics(),
              controller: _controller,
              itemBuilder: (BuildContext context, int index) {
                return _pages[index % _pages.length];
              },
            ),
            new Positioned(
              bottom: 0.0,
              left: 0.0,
              right: 0.0,
              height : 100.0,
              child: new DotsIndicator(
                controller: _controller,
                itemCount: _pages.length,
                onPageSelected: (int page) {
                  print("Data: $page");
                  _controller.animateToPage(
                    page,
                    duration: _kDuration,
                    curve: _kCurve,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
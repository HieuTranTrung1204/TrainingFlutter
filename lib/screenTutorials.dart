import 'dart:math';
import 'package:flutter/material.dart';
import 'tabs/first.dart';
import 'tabs/second.dart';
import 'tabs/third.dart';
import 'tabs/four.dart';
import 'tabs/five.dart';
import 'tabs/temp.dart';
class ScreenTutorials extends StatelessWidget {
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

  static int currentIndex = 0;
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
  Text textButton = new Text('NEXT', style: new TextStyle(fontSize: 12.0));

  void buttonNext(BuildContext context)
  {
      print("next page: $currentIndex");
      if(currentIndex <4)
      {
        currentIndex = currentIndex+1;
        onPageSelected(currentIndex);
        if(currentIndex==4)
          {
            textButton = new Text('SKIP', style: new TextStyle(fontSize: 12.0));
          }
      }else{
        Navigator.of(context).push(new PageRouteBuilder(
          pageBuilder :  (_, __, ___)=> Temp()));
      }

  }
  Widget build(BuildContext context) {
    print("============================Build control: $currentIndex");
    currentIndex = currentIndex%5;
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
                      new RaisedButton(
                          child: textButton,
                          onPressed: ()=>buttonNext(context)
                      ),
                      new Material(
                        color: Colors.black,
                        type: MaterialType.circle,
                        child: new Container(
                          width: _kDotSize * (currentIndex == 0 ? 2.0:1.0),
                          height: _kDotSize * (currentIndex == 0 ? 2.0:1.0),
                        ),
                      ),
                      new Material(
                        color: Colors.black,
                        type: MaterialType.circle,
                        child: new Container(
                          width: _kDotSize * (currentIndex == 1 ? 2.0:1.0),
                          height: _kDotSize * (currentIndex == 1 ? 2.0:1.0),
                        ),
                      ),
                      new Material(
                        color: Colors.black,
                        type: MaterialType.circle,
                        child: new Container(
                          width: _kDotSize * (currentIndex == 2 ? 2.0:1.0),
                          height: _kDotSize * (currentIndex == 2 ? 2.0:1.0),
                        ),
                      ),
                      new Material(
                        color: Colors.black,
                        type: MaterialType.circle,
                        child: new Container(
                          width: _kDotSize * (currentIndex == 3 ? 2.0:1.0),
                          height: _kDotSize * (currentIndex == 3 ? 2.0:1.0),
                        ),
                      ),
                      new Material(
                        color: Colors.black,
                        type: MaterialType.circle,
                        child: new Container(
                          width: _kDotSize * (currentIndex == 4 ? 2.0:1.0),
                          height: _kDotSize * (currentIndex == 4 ? 2.0:1.0),
                        ),
                      ),
                      new Row(
                        //mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Text("SKIP"),
                          new IconButton(
                              icon: Icon(
                                Icons.navigate_next
                                ,
                                size: 35.0,
                                color: Colors.lightGreen,
                              ),
                              onPressed: () => Navigator.of(context).push(new PageRouteBuilder(
                                  pageBuilder :  (_, __, ___)=> Temp()))
                          ),
                          //new Text("Cài đặt", style: new TextStyle(fontSize: 8.0),),
                        ],
                      ),
                    ],
                  ),
                )
            )
        ),
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

  int _currentIndex = 0;

  static const _kDuration = const Duration(milliseconds: 500);

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
              //scrollDirection : null,
              reverse : false,
              controller: _controller,
              itemBuilder: (BuildContext context, int index) {
                DotsIndicator.currentIndex = index % _pages.length;
                return _pages[index % _pages.length];
              },
              onPageChanged: (int page){
                DotsIndicator.currentIndex = page;
              }
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
                  DotsIndicator.currentIndex = page;
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
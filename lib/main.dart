import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(),
      // Đây là cách set title cách 2
      //home: new MyHomePage(title: 'Đây là title cách 2'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  //Set title cách 2
  //MyHomePage({Key key, this.title}) : super(key: key);
  //final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
  Color colorsMain = Colors.white;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Container(

          child: new Column(
            children: <Widget>[
              new Expanded(
                child: new Container(
                    color: Colors.red
                ),
                flex: 3,
              ),
              new Expanded(
                child: new Container(
                    color: Colors.greenAccent
                ),
                flex: 2,
              ),
              new Expanded(
                child: new TabButton(),
                flex: 7,
              ),

            ],
          ),
        )
    );
  }
}
class TabButton extends StatefulWidget {
  TabButton({Key key}) : super(key: key);

  //Set title cách 2
  //MyHomePage({Key key, this.title}) : super(key: key);
  //final String title;

  @override
  TabButtonState createState() => new TabButtonState();
}
class TabButtonState extends State<TabButton>{
//  TabButton({
//    this.controller
//  }) : super(listenable: controller);
  List<String> data = <String>[
    "1. Thành viên mới đăng ký sẽ có ít ưu đã hơn những thành viên khác Thành viên mới đăng ký sẽ có ít ưu đã hơn những thành viên khác Thành viên mới đăng ký sẽ có ít ưu đã hơn những thành viên khác Thành viên mới đăng ký sẽ có ít ưu đã hơn những thành viên khác Thành viên mới đăng ký sẽ có ít ưu đã hơn những thành viên khác Thành viên mới đăng ký sẽ có ít ưu đã hơn những thành viên khác Thành viên mới đăng ký sẽ có ít ưu đã hơn những thành viên khác Thành viên mới đăng ký sẽ có ít ưu đã hơn những thành viên khác Thành viên mới đăng ký sẽ có ít ưu đã hơn những thành viên khác Thành viên mới đăng ký sẽ có ít ưu đã hơn những thành viên khác Thành viên mới đăng ký sẽ có ít ưu đã hơn những thành viên khác Thành viên mới đăng ký sẽ có ít ưu đã hơn những thành viên khác Thành viên mới đăng ký sẽ có ít ưu đã hơn những thành viên khác Thành viên mới đăng ký sẽ có ít ưu đã hơn những thành viên khác Thành viên mới đăng ký sẽ có ít ưu đã hơn những thành viên khác",
    "2 Thành viên Bạc sẽ có nhiều ưu đã hơn thành viên mới đăng ký Thành viên Bạc sẽ có nhiều ưu đã hơn thành viên mới đăng ký Thành viên Bạc sẽ có nhiều ưu đã hơn thành viên mới đăng ký Thành viên Bạc sẽ có nhiều ưu đã hơn thành viên mới đăng ký Thành viên Bạc sẽ có nhiều ưu đã hơn thành viên mới đăng ký Thành viên Bạc sẽ có nhiều ưu đã hơn thành viên mới đăng ký Thành viên Bạc sẽ có nhiều ưu đã hơn thành viên mới đăng ký Thành viên Bạc sẽ có nhiều ưu đã hơn thành viên mới đăng ký Thành viên Bạc sẽ có nhiều ưu đã hơn thành viên mới đăng ký Thành viên Bạc sẽ có nhiều ưu đã hơn thành viên mới đăng ký Thành viên Bạc sẽ có nhiều ưu đã hơn thành viên mới đăng ký Thành viên Bạc sẽ có nhiều ưu đã hơn thành viên mới đăng ký Thành viên Bạc sẽ có nhiều ưu đã hơn thành viên mới đăng ký Thành viên Bạc sẽ có nhiều ưu đã hơn thành viên mới đăng ký Thành viên Bạc sẽ có nhiều ưu đã hơn thành viên mới đăng ký",
    "3 Thành viên Vàng thì còn nhiều hơn nữa Thành viên Vàng thì còn nhiều hơn nữa Thành viên Vàng thì còn nhiều hơn nữa Thành viên Vàng thì còn nhiều hơn nữa Thành viên Vàng thì còn nhiều hơn nữa Thành viên Vàng thì còn nhiều hơn nữa Thành viên Vàng thì còn nhiều hơn nữa Thành viên Vàng thì còn nhiều hơn nữa Thành viên Vàng thì còn nhiều hơn nữa Thành viên Vàng thì còn nhiều hơn nữa Thành viên Vàng thì còn nhiều hơn nữa Thành viên Vàng thì còn nhiều hơn nữa Thành viên Vàng thì còn nhiều hơn nữa Thành viên Vàng thì còn nhiều hơn nữa Thành viên Vàng thì còn nhiều hơn nữa ",
    "4 Đây là bạch kim, bạch kim rồi, chúc mừng bạn Đây là bạch kim, bạch kim rồi, chúc mừng bạn Đây là bạch kim, bạch kim rồi, chúc mừng bạnĐây là bạch kim, bạch kim rồi, chúc mừng bạnĐây là bạch kim, bạch kim rồi, chúc mừng bạnĐây là bạch kim, bạch kim rồi, chúc mừng bạnĐây là bạch kim, bạch kim rồi, chúc mừng bạnĐây là bạch kim, bạch kim rồi, chúc mừng bạnĐây là bạch kim, bạch kim rồi, chúc mừng bạnĐây là bạch kim, bạch kim rồi, chúc mừng bạnĐây là bạch kim, bạch kim rồi, chúc mừng bạnĐây là bạch kim, bạch kim rồi, chúc mừng bạnĐây là bạch kim, bạch kim rồi, chúc mừng bạnĐây là bạch kim, bạch kim rồi, chúc mừng bạnĐây là bạch kim, bạch kim rồi, chúc mừng bạnĐây là bạch kim, bạch kim rồi, chúc mừng bạn"
  ];

  static int currentIndex = 0;
  Color colorSpecial = Colors.white;
  Color colorNormal = Colors.white70;

  void _onTap(int index)
  {
    setState(() {
      currentIndex = index;
    });

  }
  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.black12,
      padding: new EdgeInsets.all(10.0),
      child: new Row(
        children: <Widget>[
          new Expanded(
            child:  new Column(
              children: <Widget>[
                new Expanded(
                  child: new InkWell(
                    child: new Container(
                      decoration: new BoxDecoration(
                          color: (currentIndex == 0 ? colorSpecial:colorNormal),
                          //borderRadius: const BorderRadius.only(topLeft: const Radius.circular(50.0),bottomLeft: const Radius.circular(50.0)),
                      ),
                      alignment: Alignment.center,
                      child: new Icon(Icons.star_border, color: (currentIndex == 0 ? Colors.yellow:Colors.black),),
                    ),
                    onTap: ()=> _onTap(0),
                  ),
                  flex: 1,
                ),
                //new Divider(height: 10.0,),
                new Expanded(
                  child: new InkWell(
                    child: new Container(
                      decoration: new BoxDecoration(
                        color: (currentIndex == 1 ? colorSpecial:colorNormal),
                        //borderRadius: const BorderRadius.only(topLeft: const Radius.circular(50.0),bottomLeft: const Radius.circular(50.0)),
                      ),
                      alignment: Alignment.center,
                      child: new Icon(Icons.star_half, color: (currentIndex == 1 ? Colors.yellow:Colors.black),),
                    ),
                    onTap:()=> _onTap(1),
                  ),
                  flex: 1,
                ),
                //new Divider(height: 10.0,),
                new Expanded(
                  child: new InkWell(
                    child: new Container(
                      decoration: new BoxDecoration(
                        color: (currentIndex == 2 ? colorSpecial:colorNormal),
                        //borderRadius: const BorderRadius.only(topLeft: const Radius.circular(50.0),bottomLeft: const Radius.circular(50.0)),
                      ),
                      alignment: Alignment.center,
                      child: new Icon(Icons.star, color: (currentIndex == 2 ? Colors.yellow:Colors.black),),
                    ),
                    onTap: ()=> _onTap(2),
                  ),
                  flex: 1,
                ),
                //new Divider(height: 10.0,),
                new Expanded(
                  child: new InkWell(
                    child: new Container(
                      decoration: new BoxDecoration(
                        color: (currentIndex == 3 ? colorSpecial:colorNormal),
                        //borderRadius: const BorderRadius.only(topLeft: const Radius.circular(50.0),bottomLeft: const Radius.circular(50.0)),
                      ),
                      alignment: Alignment.center,
                      child: new Icon(Icons.stars, color: (currentIndex == 3 ? Colors.yellow:Colors.black),),
                    ),
                    onTap: ()=> _onTap(3),
                  ),
                  flex: 1,
                )
              ],
            ),
            flex: 2,
          ),
          new Expanded(
            child: new Container(
                color: Colors.white,
                padding: new EdgeInsets.only(top: 10.0, bottom: 10.0,left: 10.0,right: 10.0),
                child: new ListView(
                  children: <Widget>[
                    new Container(
                      child: new Text(data[currentIndex], style: new TextStyle(fontSize: 20.0),),
                    )
                  ],

                )
            ),
            flex: 6,
          ),
        ],
      ),
    );
  }
}
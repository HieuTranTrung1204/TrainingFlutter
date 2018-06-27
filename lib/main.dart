import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
    SystemChrome.setEnabledSystemUIOverlays([]);
    return new Scaffold(
//      appBar: new AppBar(
//        title: new Text("TazaSpa"),
//      ),
        primary: false,
        body: new Container(

          child: new Column(
            children: <Widget>[
              new Expanded(
                child: new Container(
                    child: new Card(
                      color: Colors.lightBlueAccent,
                      child: new Stack(
                        alignment: Alignment.bottomLeft,
                        children: <Widget>[
                          //new Image.asset("assets/images/background_1.jpg"),
                          new Container(
                            child: new Row(
                              children: <Widget>[
                                new Icon(Icons.stars,size: 20.0,color: Colors.yellow,),
                                new Text("Thành viên Vàng",style: new TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),)
                              ],
                            ),
                            margin: new EdgeInsets.only(bottom: 5.0,left: 5.0),
                          )
                        ],
                      ),
                    ),
                ),
                flex: 4,
              ),
              new Expanded(
                child:  new Card(
                  child: new Container(
                    margin: new EdgeInsets.only(left: 10.0,top: 10.0),
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Text("QUÁ TRÌNH TÍCH ĐIỂM", style: new TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold),),
                        new MemberBar(),
                        new Text("Còn 200 điểm nữa để đạt mốc thành viên Vàng")
                      ],
                    ),
                  ),
                ),
                flex: 3,
              ),
              new Expanded(
                child: new TabButton(),
                flex: 8,
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
  Color colorNormal = Colors.greenAccent;

  void _onTap(int index)
  {
    setState(() {
      currentIndex = index;
    });

  }
  @override
  Widget build(BuildContext context) {
    return new Container(
      //padding: new EdgeInsets.all(5.0),
      child: new Card(
        child: new Row(
          children: <Widget>[
            new Expanded(
              child:  new Column(
                children: <Widget>[
                  new Expanded(
                    child: new Card(
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
                    ),
                    flex: 1,
                  ),
                  //new Divider(height: 10.0,),
                  new Expanded(
                    child: new Card(
                      child: InkWell(
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
                    ),
                    flex: 1,
                  ),
                  //new Divider(height: 10.0,),
                  new Expanded(
                    child: new Card(
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
                    ),
                    flex: 1,
                  ),
                  //new Divider(height: 10.0,),
                  new Expanded(
                    child: new Card(
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
                    ),
                    flex: 1,
                  )
                ],
              ),
              flex: 2,
            ),
            new Expanded(
              child: new Card(
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
              ),
              flex: 6,
            ),
          ],
        ),
      )
    );
  }
}


class MemberBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Container(
        alignment: new FractionalOffset(0.5, 0.5),
        height: 44.0,
        width: 360.0,
        child: new Stack(
          children: <Widget>[
            new Transform(
              alignment: FractionalOffset.center,
              transform: new Matrix4.identity()..scale(1.0, 0.04),
              child: new Container(
                width: MediaQuery.of(context).size.width-70.0,
                decoration: new BoxDecoration(
                  color: Colors.transparent,
                ),
              ),
            ),
            new Transform(
              alignment: FractionalOffset.center,
              transform: new Matrix4.identity()..scale(1.0, 0.02),
              child: new Container(
                width: MediaQuery.of(context).size.width-80.0,
                decoration: new BoxDecoration(
                  color: Colors.grey,
                ),
              ),
            ),
            new Transform(
              alignment: FractionalOffset.center,
              transform: new Matrix4.identity()..scale(1.0, 0.02),
              child: new Container(
                width: 120.0,
                decoration: new BoxDecoration(
                  color: Colors.redAccent,
                ),
              ),
            ),
            new Positioned(
                left: 0.0,
                bottom: 16.0,
                child: new Container(
                  decoration: new BoxDecoration(
                    color: Colors.yellowAccent,
                    borderRadius: new BorderRadius.all(new Radius.circular(50.0)),
                    border: new Border.all(
                      width: 1.0,
                    ),
                  ),
                  child: new Icon(Icons.star_border,color: Colors.red,size: 10.0,),
                )
            ),
            new Positioned(
                left: 80.0,
                bottom: 16.0,
                child: new Container(
                  decoration: new BoxDecoration(
                    color: Colors.yellowAccent,
                    borderRadius: new BorderRadius.all(new Radius.circular(50.0)),
                    border: new Border.all(
                      width: 1.0,
                    ),
                  ),
                  child: new Icon(Icons.star_half,color: Colors.red,size: 10.0,),
                )
            ),
            new Positioned(
                left: 200.0,
                bottom: 16.0,
                child: new Container(
                  decoration: new BoxDecoration(
                    color: Colors.grey,
                    borderRadius: new BorderRadius.all(new Radius.circular(50.0)),
                    border: new Border.all(
                      width: 1.0,
                    ),
                  ),
                  child: new Icon(Icons.star,color: Colors.black,size: 10.0,),
                )
            ),
            new Positioned(
                left: MediaQuery.of(context).size.width-90,
                bottom: 16.0,
                child: new Container(
                  decoration: new BoxDecoration(
                    color: Colors.grey,
                    borderRadius: new BorderRadius.all(new Radius.circular(50.0)),
                    border: new Border.all(
                      width: 1.0,
                    ),
                  ),
                  child: new Icon(Icons.stars,color: Colors.black,size: 10.0,),
                )
            ),
            new Positioned(
                left: 110.0,
                bottom: 19.5,
                child: new Icon(Icons.nature,color: Colors.red,size: 20.0,),
            )
          ],
        )
    );
  }
}
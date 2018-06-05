import 'package:flutter/material.dart';

class screenDashboard extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      home: new screenDashboardStatefull(),
    );
  }
}

class screenDashboardStatefull extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return screenDashboardState();
  }
}

class screenDashboardState extends State<screenDashboardStatefull> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Container(
            decoration: new BoxDecoration(color: Colors.black12),
            child: new ListView(
              children: <Widget>[
                new Card(
                  margin: new EdgeInsets.only(top: 10.0,left: 10.0,right: 10.0),
                  child: Column(
                    children: <Widget>[
                      new Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Container(
                            margin : new EdgeInsets.only(top: 15.0),
                            width: 100.0,
                            height: 100.0,
                            decoration: new BoxDecoration(
                              color: const Color(0xff7c94b6),
                              image: new DecorationImage(
                                image: new ExactAssetImage('images/taza.png'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: new BorderRadius.all(new Radius.circular(50.0)),
                              border: new Border.all(
                                color: Colors.black,
                                width: 2.0,
                              ),
                            ),
                          ),
                          new Text("Trần Thị A",style: new TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),)
                        ],
                      ),
                      new Container(
                          margin: new EdgeInsets.all(10.0),
                          child: new Stack(
                            children: <Widget>[
                              new Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  new Column(
                                    children: <Widget>[
                                      new Text("Điểm tích luỹ",style: new TextStyle(fontSize: 15.0),),
                                      new Text("123*",style: new TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold),),
                                    ],
                                  ),
                                ],
                              ),
                              new Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  new Text("Lịch sử  ",style: new TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
                                  new Icon(Icons.history),
                                ],
                              ),
                            ],
                          )
                      ),
                    ],
                  ),
                ),
                new Card(
                  margin: new EdgeInsets.only(top: 10.0,left: 10.0,right: 10.0),
                  child: new ListTile(
                    leading : new Icon(Icons.score,color:Colors.blue,size: 20.0),
                    title: new Text("Tìm hiểu chương trình tích điểm."),
                    trailing: new Icon(Icons.navigate_next,color:Colors.black26,size: 20.0),
                  ),
                ),
                new Card(
                  margin: new EdgeInsets.only(top: 10.0,left: 10.0,right: 10.0),
                  child: new Container(
                    margin: new EdgeInsets.all(10.0),
                    child: Column(
                      children: <Widget>[
                        new Text("09:30 Sáng thứ 3",style: new TextStyle(fontSize: 40.0),),
                        new Container(
                          margin: new EdgeInsets.only(top: 8.0),
                          child: new Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              new Text("Lịch hẹn gần nhất",style: new TextStyle(fontSize: 14.0)),
                              new Text("Ngày 05/06/2018",style: new TextStyle(fontSize: 18.0),)
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ),
                new Card(
                    margin: new EdgeInsets.only(top: 10.0,left: 10.0,right: 10.0),
                    child: new Column(
                      children: <Widget>[
                        new Image.asset('images/news.jpg',fit: BoxFit.fill,),
                        new ListTile(
                          title: new Text(
                            "Sự kiện đặc biệt ở Taza Spa!",
                            style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                          ),
                          subtitle: new Text(
                            "Đây là cái mô tả cho sự kiện đặc biệt này, ngồi suy nghĩ quài không ra cái mô tả nên phải viết như thế này cho nó thành cái mô tả. Cảm ơn!",
                            style: new TextStyle(fontSize: 15.0),
                          ),
                        ),
                        new Divider(color: Colors.black,  height: 10.0, indent: 20.0, ),
                        new Container(
                          margin : new EdgeInsets.only(left: 200.0, right: 20.0,bottom: 10.0,top: 2.0),
                          child : new Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              new Expanded(
                                child: new RaisedButton(
                                  color: Colors.lightBlueAccent,
                                  textColor: Colors.white,
                                  child:  new Text("Xem thêm"),
                                  onPressed: () => {},
                                  padding : new EdgeInsets.all(8.0),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                ),
                new Card(
                    margin: new EdgeInsets.only(top: 10.0,left: 10.0,right: 10.0),
                    child: new Column(
                      children: <Widget>[
                        new Image.asset('images/news2.jpg',fit: BoxFit.fill,),
                        new ListTile(
                          title: new Text(
                            "Giảm giá 40% cho gói massag toàn thân!",
                            style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                          ),
                          subtitle: new Text(
                            "Đây là cái mô tả cho gói giảm giá này, ngồi suy nghĩ quài không ra cái mô tả nên phải viết như thế này cho nó thành cái mô tả. Cảm ơn!",
                            style: new TextStyle(fontSize: 15.0),
                          ),
                        ),
                        new Divider(color: Colors.black,  height: 10.0, indent: 20.0, ),
                        new Container(
                          margin : new EdgeInsets.only(left: 200.0, right: 20.0,bottom: 10.0,top: 2.0),
                          child : new Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              new Expanded(
                                child: new RaisedButton(
                                  color: Colors.lightBlueAccent,
                                  textColor: Colors.white,
                                  child:  new Text("Mua ngay"),
                                  onPressed: () => {},
                                  padding : new EdgeInsets.all(8.0),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                ),
              ],
            ),
        ),
        bottomNavigationBar: new Material(
          // set the color of the bottom navigation bar
          // set the tab bar as the child of bottom navigation bar
          child: new Container(
                decoration: new BoxDecoration(
                  color: Colors.black12,
                ),
                height: 60.0,
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    new Container(
                      margin: new EdgeInsets.only(top: 9.0),
                      decoration: new BoxDecoration(
                        color: Colors.transparent,
                      ),
                      width: 45.0,
                      child : new Column(
                        //mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Icon(Icons.calendar_today,size: 30.0, color: Colors.blueAccent,),
                          new Text("Lịch khám", style: new TextStyle(fontSize: 8.0),),
                        ],
                      ),
                    ),
                    new Container(
                      margin: new EdgeInsets.only(top: 9.0),
                      decoration: new BoxDecoration(
                        color: Colors.transparent,
                      ),
                      width: 45.0,
                      child : new Column(
                        //mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Icon(Icons.perm_identity,size: 30.0, color: Colors.blueAccent,),
                          new Text("TT Cá nhân", style: new TextStyle(fontSize: 8.0),),
                        ],
                      ),
                    ),
                    new Container(
                      margin: new EdgeInsets.only(top: 9.0),
                      decoration: new BoxDecoration(
                        color: Colors.transparent,
                      ),
                      width: 45.0,
                      child : new Column(
                        //mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Icon(Icons.card_giftcard,size: 30.0, color: Colors.blueAccent,),
                          new Text("Quà tặng", style: new TextStyle(fontSize: 8.0),),
                        ],
                      ),
                    ),
                    new Container(
                      margin: new EdgeInsets.only(top: 9.0),
                      decoration: new BoxDecoration(
                        color: Colors.transparent,
                      ),
                      width: 45.0,
                      child : new Column(
                        //mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Icon(Icons.menu,size: 30.0, color: Colors.blueAccent,),
                          new Text("Thêm", style: new TextStyle(fontSize: 10.0),),
                        ],
                      ),
                    ),
                    new Container(
                      margin: new EdgeInsets.only(top: 9.0),
                      decoration: new BoxDecoration(
                        color: Colors.transparent,
                      ),
                      width: 45.0,
                      child : new Column(
                        //mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Icon(Icons.settings,size: 30.0, color: Colors.blueAccent,),
                          new Text("Cài đặt", style: new TextStyle(fontSize: 10.0),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

        ),
    );
  }
}

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
      body: new Stack(
        children: <Widget>[
          new ListView(
            children: <Widget>[
              // Card info user
              _cardInfoUser(),
              // Card info menber
              // Card schedule
              _cardMembershipProgram(),
              _cardScheduleMember(),
              _cardNews(),
              _cardSale(),



            ],
          ),
          new Positioned(
              bottom: 0.0,
              child:new Container(
                //margin: new EdgeInsets.only(bottom: 10.0),
                   color: const Color(0xFFEEEEEE),

                  width: MediaQuery.of(context).size.width,
                  child: new Container(
                    margin: new EdgeInsets.only(bottom: 10.0),
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                onPressed: null
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
                                onPressed: null
                            ),
                            new Text("TT Cá nhân", style: new TextStyle(fontSize: 8.0),),
                          ],
                        ),
                        new Column(
                          //mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new IconButton(
                                icon: Icon(
                                  Icons.card_giftcard,
                                  size: 40.0,
                                  color: Colors.transparent,
                                ),
                                onPressed: null
                            ),
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
                                onPressed: null
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
                                onPressed: null
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
              bottom: 20.0,
              left: MediaQuery.of(context).size.width/2-30,
              child:new Container(
                margin : new EdgeInsets.only(top: 15.0),
                width: 70.0,
                height: 70.0,
                decoration: new BoxDecoration(
                  color: const Color(0xFFEEEEEE),
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
                    onPressed: null
                ),
              )
          )
        ],
      ),
    );
  }
}


Widget _cardInfoUser()
{
  return new Card(
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
            new Text("Trần Thị AB",style: new TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),)
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
                        new Row(
                          children: <Widget>[
                            new Text("123",style: new TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold,color: Colors.blue),),
                            new Icon(Icons.star,size: 26.0,color: Colors.blue)
                          ],
                        )
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
  );
}

Widget _cardMembershipProgram()
{
  return new Card(
    margin: new EdgeInsets.only(top: 10.0,left: 10.0,right: 10.0),
    child: new ListTile(
      leading : new Icon(Icons.score,color:Colors.blue,size: 20.0),
      title: new Text("Tìm hiểu chương trình tích điểm.",style: new TextStyle(fontSize: 14.0),),
      trailing: new Icon(Icons.navigate_next,color:Colors.black26,size: 20.0),
    ),
  );
}

Widget _cardScheduleMember()
{
  return new Card(
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
  );
}

Widget _cardNews()
{
  return new Card(
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
  );
}

Widget _cardSale()
{
  return new Card(
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
  );
}
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
                new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Container(
                      margin : new EdgeInsets.only(top: 10.0),
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
                          color: Colors.red,
                          width: 1.0,
                        ),
                      ),
                    ),
                  ],
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
                  child: new ListTile(
                    leading:  new Icon(Icons.notifications,color:Colors.blue,size: 20.0),
                    title: new Text("9:30 Sáng thứ 3",
                      style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),

                    ),
                    trailing: new Icon(Icons.navigate_next,color:Colors.black26,size: 20.0),
                    subtitle: new Text("Lịch hẹn gần nhất - ngày 05/06/2018"),
                  ),
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
            )
        )
    );
  }
}
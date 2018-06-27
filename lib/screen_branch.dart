import 'package:flutter/material.dart';
import 'dart:async';
import 'screen_info_branch.dart';
import 'dart:convert';
import 'dart:io';
class ScreenBranch extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.yellow,
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
  // Data
  String _demoJson ='[{"city":"HCM","branch": [{"name":"Quan 1","phone":"111111111","address":"111 duong so mot,P1,Quan 1, HCM","image":"assets/images/background_1.jpg"},{"name":"Quan 10","phone":"1010101010","address":"10 duong so muoi,P10,Quan 10, HCM","image":"assets/images/background_1.jpg"},{"name":"Quan 2","phone":"222222222","address":"222 duong so mot,P2,Quan 2, HCM","image":"assets/images/background_1.jpg"},{"name":"Quan 3","phone":"333333333","address":"333 duong so mot,P3,Quan 3, HCM","image":"assets/images/background_1.jpg"},{"name":"Quan 4","phone":"444444444","address":"444 duong so mot,P4,Quan 4, HCM","image":"assets/images/background_1.jpg"},{"name":"Quan 5","phone":"555555555","address":"555 duong so mot,P5,Quan 5, HCM","image":"assets/images/background_1.jpg"},{"name":"Quan 6","phone":"666666666","address":"666 duong so mot,P6,Quan 6, HCM","image":"assets/images/background_1.jpg"},{"name":"Quan 7","phone":"777777777","address":"777 duong so mot,P7,Quan 7, HCM","image":"assets/images/background_1.jpg"},{"name":"Quan 8","phone":"888888888","address":"888 duong so mot,P8,Quan 8, HCM","image":"assets/images/background_1.jpg"},{"name":"Quan 9","phone":"999999999","address":"999 duong so mot,P9,Quan 9, HCM","image":"assets/images/background_1.jpg"}]},{"city":"Ha Noi","branch": [{"name":"Quan 1","phone":"111111111","address":"111 duong so mot,P1,Quan 1, Ha Noi","image":"assets/images/background_1.jpg"},{"name":"Quan 10","phone":"1010101010","address":"10 duong so muoi,P10,Quan 10, Ha Noi","image":"assets/images/background_1.jpg"},{"name":"Quan 2","phone":"222222222","address":"222 duong so mot,P2,Quan 2, Ha Noi","image":"assets/images/background_1.jpg"},{"name":"Quan 3","phone":"333333333","address":"333 duong so mot,P3,Quan 3, Ha Noi","image":"assets/images/background_1.jpg"},{"name":"Quan 4","phone":"444444444","address":"444 duong so mot,P4,Quan 4, Ha Noi","image":"assets/images/background_1.jpg"},{"name":"Quan 5","phone":"555555555","address":"555 duong so mot,P5,Quan 5, Ha Noi","image":"assets/images/background_1.jpg"},{"name":"Quan 6","phone":"666666666","address":"666 duong so mot,P6,Quan 6, Ha Noi","image":"assets/images/background_1.jpg"},{"name":"Quan 7","phone":"777777777","address":"777 duong so mot,P7,Quan 7, Ha Noi","image":"assets/images/background_1.jpg"},{"name":"Quan 8","phone":"888888888","address":"888 duong so mot,P8,Quan 8, Ha Noi","image":"assets/images/background_1.jpg"},{"name":"Quan 9","phone":"999999999","address":"999 duong so mot,P9,Quan 9, Ha Noi","image":"assets/images/background_1.jpg"}]},{"city":"Da Nang","branch": [{"name":"Quan 1","phone":"111111111","address":"111 duong so mot,P1,Quan 1, Da Nang","image":"assets/images/background_1.jpg"},{"name":"Quan 10","phone":"1010101010","address":"10 duong so muoi,P10,Quan 10, Da Nang","image":"assets/images/background_1.jpg"},{"name":"Quan 2","phone":"222222222","address":"222 duong so mot,P2,Quan 2, Da Nang","image":"assets/images/background_1.jpg"},{"name":"Quan 3","phone":"333333333","address":"333 duong so mot,P3,Quan 3, Da Nang","image":"assets/images/background_1.jpg"},{"name":"Quan 4","phone":"444444444","address":"444 duong so mot,P4,Quan 4, Da Nang","image":"assets/images/background_1.jpg"},{"name":"Quan 5","phone":"555555555","address":"555 duong so mot,P5,Quan 5, Da Nang","image":"assets/images/background_1.jpg"},{"name":"Quan 6","phone":"666666666","address":"666 duong so mot,P6,Quan 6, Da Nang","image":"assets/images/background_1.jpg"},{"name":"Quan 7","phone":"777777777","address":"777 duong so mot,P7,Quan 7, Da Nang","image":"assets/images/background_1.jpg"},{"name":"Quan 8","phone":"888888888","address":"888 duong so mot,P8,Quan 8, Da Nang","image":"assets/images/background_1.jpg"},{"name":"Quan 9","phone":"999999999","address":"999 duong so mot,P9,Quan 9, Da Nang","image":"assets/images/background_1.jpg"}]},{"city":"Huế","branch": [{"name":"Quan 1","phone":"111111111","address":"111 duong so mot,P1,Quan 1, Huế","image":"assets/images/background_1.jpg"},{"name":"Quan 10","phone":"1010101010","address":"10 duong so muoi,P10,Quan 10, Huế","image":"assets/images/background_1.jpg"},{"name":"Quan 2","phone":"222222222","address":"222 duong so mot,P2,Quan 2, Huế","image":"assets/images/background_1.jpg"},{"name":"Quan 3","phone":"333333333","address":"333 duong so mot,P3,Quan 3, Huế","image":"assets/images/background_1.jpg"},{"name":"Quan 4","phone":"444444444","address":"444 duong so mot,P4,Quan 4, Huế","image":"assets/images/background_1.jpg"},{"name":"Quan 5","phone":"555555555","address":"555 duong so mot,P5,Quan 5, Huế","image":"assets/images/background_1.jpg"},{"name":"Quan 6","phone":"666666666","address":"666 duong so mot,P6,Quan 6, Huế","image":"assets/images/background_1.jpg"},{"name":"Quan 7","phone":"777777777","address":"777 duong so mot,P7,Quan 7, Huế","image":"assets/images/background_1.jpg"},{"name":"Quan 8","phone":"888888888","address":"888 duong so mot,P8,Quan 8, Huế","image":"assets/images/background_1.jpg"},{"name":"Quan 9","phone":"999999999","address":"999 duong so mot,P9,Quan 9, Huế","image":"assets/images/background_1.jpg"}]},{"city":"Bình Dương","branch": [{"name":"Quan 1","phone":"111111111","address":"111 duong so mot,P1,Quan 1, Bình Dương","image":"assets/images/background_1.jpg"},{"name":"Quan 10","phone":"1010101010","address":"10 duong so muoi,P10,Quan 10, Bình Dương","image":"assets/images/background_1.jpg"},{"name":"Quan 2","phone":"222222222","address":"222 duong so mot,P2,Quan 2, Bình Dương","image":"assets/images/background_1.jpg"},{"name":"Quan 3","phone":"333333333","address":"333 duong so mot,P3,Quan 3, Bình Dương","image":"assets/images/background_1.jpg"},{"name":"Quan 4","phone":"444444444","address":"444 duong so mot,P4,Quan 4, Bình Dương","image":"assets/images/background_1.jpg"},{"name":"Quan 5","phone":"555555555","address":"555 duong so mot,P5,Quan 5, Bình Dương","image":"assets/images/background_1.jpg"},{"name":"Quan 6","phone":"666666666","address":"666 duong so mot,P6,Quan 6, Bình Dương","image":"assets/images/background_1.jpg"},{"name":"Quan 7","phone":"777777777","address":"777 duong so mot,P7,Quan 7, Bình Dương","image":"assets/images/background_1.jpg"},{"name":"Quan 8","phone":"888888888","address":"888 duong so mot,P8,Quan 8, Bình Dương","image":"assets/images/background_1.jpg"},{"name":"Quan 9","phone":"999999999","address":"999 duong so mot,P9,Quan 9, Bình Dương","image":"assets/images/background_1.jpg"}]},{"city":"Cà Mau","branch": [{"name":"Quan 1","phone":"111111111","address":"111 duong so mot,P1,Quan 1, Cà Mau","image":"assets/images/background_1.jpg"},{"name":"Quan 10","phone":"1010101010","address":"10 duong so muoi,P10,Quan 10, Cà Mau","image":"assets/images/background_1.jpg"},{"name":"Quan 2","phone":"222222222","address":"222 duong so mot,P2,Quan 2, Cà Mau","image":"assets/images/background_1.jpg"},{"name":"Quan 3","phone":"333333333","address":"333 duong so mot,P3,Quan 3, Cà Mau","image":"assets/images/background_1.jpg"},{"name":"Quan 4","phone":"444444444","address":"444 duong so mot,P4,Quan 4, Cà Mau","image":"assets/images/background_1.jpg"},{"name":"Quan 5","phone":"555555555","address":"555 duong so mot,P5,Quan 5, Cà Mau","image":"assets/images/background_1.jpg"},{"name":"Quan 6","phone":"666666666","address":"666 duong so mot,P6,Quan 6, Cà Mau","image":"assets/images/background_1.jpg"},{"name":"Quan 7","phone":"777777777","address":"777 duong so mot,P7,Quan 7, Cà Mau","image":"assets/images/background_1.jpg"},{"name":"Quan 8","phone":"888888888","address":"888 duong so mot,P8,Quan 8, Cà Mau","image":"assets/images/background_1.jpg"},{"name":"Quan 9","phone":"999999999","address":"999 duong so mot,P9,Quan 9, Cà Mau","image":"assets/images/background_1.jpg"}]}]';

  var lstCity = new List<City>();
  int countCity = 0;
  //================



  Future<bool> _onWillPop() {
    return showDialog(
      context: context,
      builder: (context) => new AlertDialog(
        title: new Text('Are you sure?'),
        content: new Text('Do you want to exit an App'),
        actions: <Widget>[
          new FlatButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: new Text('No'),
          ),
          new FlatButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: new Text('Yes'),
          ),
        ],
      ),
    ) ?? false;
  }
  Widget _builder(BuildContext context,int index)
  {
    City _city = lstCity[index];
    return new Column(
      children: <Widget>[
        index==0 ?
        new Container(
          margin: new EdgeInsets.only(top:5.0,bottom: 5.0) ,
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Text("  Gần bạn",style: new TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
              new Container(
                height: 300.0,
                margin : new EdgeInsets.only(bottom: 20.0,left: 3.0,right: 3.0,top : 10.0),
                width: MediaQuery.of(context).size.width,
                child: new Card(
                  child: new InkWell(
                    child: new Column(
                      children: <Widget>[
                        new Expanded(
                          child : new Stack(
                            alignment: Alignment.bottomLeft,
                            children: <Widget>[
                              new Container(
                                height: 250.0,
                                decoration: const BoxDecoration(
                                  image: const DecorationImage(
                                    fit: BoxFit.fill,
                                    image: const AssetImage("assets/images/background_1.jpg"),
                                  ),
                                ),
                              ),
                              new Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  new Container(
                                    margin: new EdgeInsets.only(bottom: 10.0,left: 10.0),
                                    child: new Row(
                                      children: <Widget>[
                                        new Icon(Icons.phone,size: 15.0,color: Colors.white,),
                                        new Text("   0934045794",style: new TextStyle(color: Colors.white,fontSize: 12.0),)
                                      ],
                                    ),
                                  ),
                                  new Container(
                                    margin: new EdgeInsets.only(bottom: 10.0,right: 10.0),
                                    child: new Row(
                                      children: <Widget>[
                                        new Icon(Icons.map,size: 15.0,color: Colors.white,),
                                        new Text("   Chỉ đường",style: new TextStyle(color: Colors.white,fontSize: 12.0),)
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          flex: 8,
                        ),
                        new ListTile(
                          title: new Text("GongCha Nguyễn Văn Đậu",style: new TextStyle(fontWeight: FontWeight.bold),),
                          subtitle: new Text("113-114 Nguyễn Văn Đậu, P.9, Q.Phú Nhuận, HCM"),
                        ),
                      ],
                    ),
                    onTap: null,
                  ),
                ),
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Text(_city.city, style: new TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),),
                  new Text("Tất cả", style: new TextStyle(fontSize: 15.0,color: Colors.red,fontWeight: FontWeight.bold),)
                ],
              ),
            ],
          )
        ):
        new Container(
          margin: new EdgeInsets.only(top:5.0,bottom: 5.0, left: 10.0,right: 10.0) ,
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new Text(_city.city, style: new TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),),
              new Text("Tất cả", style: new TextStyle(fontSize: 15.0,color: Colors.red,fontWeight: FontWeight.bold),)
            ],
          ),
        ),
        new CardBranch(nameCity: _city.city,lstBranch: _city.lstBranch)
      ],
    ) ;
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    var data = json.decode(_demoJson);
    for(var itemCity in data)
    {
      City _city = City.fromJson(itemCity);
      lstCity.add(_city);
    }
    countCity =lstCity.length;
  }

  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
        onWillPop: _onWillPop,
        child: new Scaffold(
            appBar: new AppBar(
              title: new Text("TazaSpa"),
            ),
            body: new Container(
              child: new Card(
                child: new ListView.builder(
                    itemCount: countCity,
                    itemBuilder: _builder
                ),
              ),
            )
        )
    );
  }
}

class CardBranch extends StatelessWidget{

  CardBranch(
      {Key key,
        this.nameCity,
        this.lstBranch})
      : assert(nameCity != null),
        super(key: key);

  final String nameCity;
  final List<Branch> lstBranch;

  _onTap(BuildContext context,int index){
    Navigator.of(context).push(new PageRouteBuilder(
        pageBuilder :  (_, __, ___)=> new ScreenInfoBranch(
          title: lstBranch[index].name,
          phone: lstBranch[index].phone,
          name: lstBranch[index].name,
          address: lstBranch[index].address,)));
  }
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 250.0,
      child: new ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: lstBranch.length,
        itemBuilder: (BuildContext context, int index) {
          return new Container(
            height: 200.0,
            width: 300.0,
            margin: new EdgeInsets.only(left: 5.0,right: 5.0),
            child: new Card(
              child: new InkWell(
                child: new Column(
                  children: <Widget>[
                    new Expanded(
                      child : new Container(
                        height: 150.0,
                        decoration: const BoxDecoration(
                          image: const DecorationImage(
                            fit: BoxFit.fill,
                            image: const AssetImage("assets/images/background_1.jpg"),
                          ),
                        ),
                      ),
                      flex: 8,
                    ),
                    new ListTile(
                      title: new Text(lstBranch[index].name),
                      subtitle: new Text(lstBranch[index].address.length > 34 ? lstBranch[index].address.substring(0,34)+"...":lstBranch[index].address),
                    ),
                  ],
                ),
                onTap: ()=>_onTap(context,index),
              ),
            ),
          );
        },
      ),
    );
  }
}
class City {
  final String city;
  final List<Branch> lstBranch;

  City({this.city, this.lstBranch});

  factory City.fromJson(Map<String,dynamic> jsons){
    var _lstBranch = List<Branch>() ;
    for (var _Branch in jsons['branch']) {
      Branch _branch = Branch.fromJson(_Branch);
      _lstBranch.add(_branch);
    }
    return City(
        city: jsons['city'],
        lstBranch: _lstBranch
    );
  }
}

class Branch {
  final String name;
  final String address;
  final String image;
  final String phone;

  Branch({ this.name, this.address, this.image,this.phone});
  factory Branch.fromJson(Map<String, dynamic> json) {
    return Branch(
      name: json['name'],
      address: json['address'],
      image: json['image'],
      phone: json['phone'],
    );
  }
}
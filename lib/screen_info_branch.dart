import 'package:flutter/material.dart';

class ScreenInfoBranch extends StatelessWidget {
  // This widget is the root of your application.
  ScreenInfoBranch(
      {Key key,
        this.title,
        this.image:"image",
        this.name,
        this.address,
        this.phone})
      : assert(image!= null),
        super(key: key);

  final String image;
  final String name;
  final String address;
  final String phone;
  final String title;

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new ScreenInfoBranchStateful(
        title: this.title,
        phone: this.phone,
        name: this.name,
        address: this.address,),
    );
  }
}
class ScreenInfoBranchStateful extends StatefulWidget {
  ScreenInfoBranchStateful(
      {Key key,
        this.title,
        this.image:"image",
        this.name,
        this.address,
        this.phone})
      : assert(image!= null),
        super(key: key);
  /*
        assert(name!= null),
        assert(address!= null),
        assert(phone!= null),
 * */
  final String image;
  final String name;
  final String address;
  final String phone;
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<ScreenInfoBranchStateful> {


  _onTap(){
    print("onTappppppppppp : " + widget.phone);
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Column(
          children: <Widget>[
            new Expanded(
              child: new Container(
                decoration: const BoxDecoration(
                  image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: const AssetImage("assets/images/background_1.jpg"),
                  ),
                ),
              ),
              flex: 5,
            ),
            new Expanded(
              child: new Container(
                margin: new EdgeInsets.only(left: 10.0,right: 10.0),
//                color: Colors.yellow,
                alignment: Alignment.topLeft,
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Text(widget.name,style: new TextStyle(fontSize: 20.0),textAlign: TextAlign.left,),
                    new Text(widget.address,style: new TextStyle(fontSize: 16.0,color: Colors.black45),textAlign: TextAlign.left,)
                  ],
                ),
              ),
              flex: 2,
            ),
            new Expanded(
              child: new Column(
                children: <Widget>[
                  new InkWell(
                    child: new ListTile(
                      leading: new Icon(Icons.phone,color: Colors.orangeAccent,size: 30.0,),
                      title: new Text(widget.phone, style: new TextStyle(color: Colors.black45),),
                    ),
                    onTap: null,
                  ),
                  new Divider(indent: 70.0,height: 5.0,color: Colors.black,),
                  new InkWell(
                    child: new ListTile(
                      leading: new Icon(Icons.location_on,color: Colors.orangeAccent,size: 30.0,),
                      title: new Text("Dẫn đường", style: new TextStyle(color: Colors.black45),),
                    ),
                    onTap: null,
                  ),
                  new Divider(indent: 70.0,height: 5.0,color: Colors.black,),
                  new InkWell(
                    child: new ListTile(
                      leading: new Icon(Icons.map,color: Colors.orangeAccent,size: 30.0,),
                      title: new Text("Hiển thị bản đồ", style: new TextStyle(color: Colors.black45),),
                    ),
                    onTap: null,
                  ),
                  new Divider(indent: 70.0,height: 5.0,color: Colors.black,),

                ],
              ),
              flex: 5,
            )
          ],
        )
    );
  }
}
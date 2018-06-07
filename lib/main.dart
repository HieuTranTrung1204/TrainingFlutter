import 'package:flutter/material.dart';
import 'loginScreen.dart';
import 'dart:async';
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 5),() => Navigator.of(context).push(new PageRouteBuilder(
        pageBuilder :  (_, __, ___)=> StackApp())));
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      
      body: new Stack(
        children: <Widget>[
          new Container(
            color: Colors.white,
          ),
          new Container(
            margin: new EdgeInsets.only(top : 50.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                new Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    new CircleAvatar(
                      backgroundColor: Colors.blue,
                      radius: 50.0,
                      child: Icon(Icons.perm_identity, size: 50.0,),
                    ),
                    CircularProgressIndicator()
                  ],
                ),
              ],
            )
          )
        ],
      )
    );
  }
}

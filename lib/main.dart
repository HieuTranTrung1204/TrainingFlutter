import 'package:flutter/material.dart';

import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;

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

Future<String> loadAsset() async {
  return await rootBundle.loadString('data/message.json');
}

class _MyHomePageState extends State<MyHomePage> {
  String _name = "Tét";

  @override
  Widget build(BuildContext context) {

      setState(() {
        loadAsset().then((data){
          print("HieuLog Load text: $data");
        });
          _name = "Hiếu";

      });

    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Đây là title cách 1")
        // title: new Text(widget.title),
      ),
      body: new Center(
        child: new Text("Đây là body 1 $_name"),
      )
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';

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

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {

  Animation<double> animation;
  AnimationController controller;

 @override
 void initState() {
     // TODO: implement initState
     super.initState();
     
    controller = new AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this);
    animation = new Tween(begin: 0.0, end: 300.0).animate(controller)
      ..addListener(() {
        setState(() {
          // the state that has changed here is the animation object’s value
        });
      });
    controller.forward();
   }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Đây là title cách 1")
        // title: new Text(widget.title),
      ),
      body: new Center(
        child: new Container(
          margin: new EdgeInsets.symmetric(vertical: 10.0),
          height: animation.value,
          width: animation.value,
          child: new FlutterLogo(),
      ),
      )
    );
  }
  
  dispose() {
    controller.dispose();
    super.dispose();
  }
}

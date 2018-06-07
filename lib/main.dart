import 'package:flutter/material.dart';
//pages
import 'routes/demo_route_2.dart';
import 'routes/demo_route_3.dart';
import 'routes/demo_route_4.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      routes: <String, WidgetBuilder>{
        '/page2': (BuildContext context) => new Page2(),
        '/page3': (BuildContext context) => new Page3(),
        '/page4': (BuildContext context) => new Page4()
      },
      home: new Landing(),
    );
  }
}


class Landing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new LandingBody(),

      appBar: new AppBar(
        title: new Text('Welcome'),
        elevation: 0.0,
      ),
    );
  }
}
class LandingBody extends StatefulWidget {
  @override
  LandingBodyState createState() {
    return new LandingBodyState();
  }
}

class LandingBodyState extends State<LandingBody> {
  Widget build(BuildContext context) {
    return new Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.blue,
      child: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new CircleAvatar(
                backgroundImage: new NetworkImage(
                    'https://image.freepik.com/free-vector/designer-s-office-flat-illustration_23-2147492101.jpg'),
                radius: 70.0),

            new Padding(
              padding: const EdgeInsets.only(top: 78.0),
              child: new IconButton(
                onPressed: (() => Navigator.of(context).pushNamed('/page2')),
                icon: new Icon(Icons.arrow_forward),
                iconSize: 60.0,
                color: Colors.pink[300],
              ),
            )
          ],
        ),
      ),
    );
  }
}
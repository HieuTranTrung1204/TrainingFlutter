import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  final String name;
  Page2({this.name});
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Page 2'),
        elevation: 0.0,
      ),
      body: new Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.blue,
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new CircleAvatar(
                  backgroundImage: new NetworkImage(
                      'https://image.freepik.com/free-vector/business-person-cartoon-with-a-light-bulb_1207-283.jpg'),
                  radius: 70.0),
              new Padding(
                padding: const EdgeInsets.all(58.0),
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    new RaisedButton(
                        child: new Text('Home'),
                        onPressed: () => Navigator.of(context).pop()),
                    new RaisedButton(
                      child: new Text('Page 3'),
//                        onPressed: () => Navigator.of(context).pushNamedAndRemoveUntil('/', (Route<dynamic> route) => false )
                      onPressed: (() => Navigator.of(context).pushNamed('/page3')),
                    ),
                    new RaisedButton(
                      child: new Text('Page 4-pushNamedAndRemoveUntil-true',style: new TextStyle(fontSize: 12.0),),
                      onPressed: () => Navigator.of(context).pushNamedAndRemoveUntil('/page4', (Route<dynamic> route) => true)
                    )

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
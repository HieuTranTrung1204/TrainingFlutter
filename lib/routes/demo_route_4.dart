import 'package:flutter/material.dart';

class Page4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Page 4'),
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
                  backgroundImage: new NetworkImage('https://image.freepik.com/free-vector/vector-illustration-of-a-mountain-landscape_1441-77.jpg'),
                  radius: 70.0),
              new Padding(
                padding: const EdgeInsets.all(58.0),
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    new RaisedButton(child: new Text('Home-pushNamedAndRemoveUntil-false'),
                        onPressed: () => Navigator.of(context).pushNamedAndRemoveUntil('/', (Route<dynamic> route) => false )
                    ),
                    new RaisedButton(
                      child: new Text('Page 2'),
//                        onPressed: () => Navigator.of(context).pushNamedAndRemoveUntil('/', (Route<dynamic> route) => false )
                      onPressed: (() => Navigator.of(context).pushNamed('/page2')),
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
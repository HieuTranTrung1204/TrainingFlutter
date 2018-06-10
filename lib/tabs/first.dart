import 'package:flutter/material.dart';

class First extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("Ve First");
    return new Container(

      color: Colors.blue,
      child: new Center(
        child: new Column(
          // center the children
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Icon(
              Icons.calendar_today,
              size: 160.0,
              color: Colors.red,
            ),
            new Text("First Tab")
          ],
        ),
      ),
    );
  }
}

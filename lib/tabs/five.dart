import 'package:flutter/material.dart';

class Five extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("Ve Thrid");
    return new Container(
      child: new Center(
        child: new Column(
          // center the children
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Icon(
              Icons.ac_unit,
              size: 160.0,
              color: Colors.yellow,
            ),
            new Text("Five Tab")
          ],
        ),
      ),
    );
  }
}

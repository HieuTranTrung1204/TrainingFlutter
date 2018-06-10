import 'package:flutter/material.dart';

class Temp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("Ve Thrid");
    return new Container(
      color: Colors.green,
      child: new Center(
        child: new Column(
          // center the children
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Icon(
              Icons.settings_system_daydream,
              size: 160.0,
              color: Colors.blue,
            ),
            new Text("Temp Tab")
          ],
        ),
      ),
    );
  }
}

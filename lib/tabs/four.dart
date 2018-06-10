import 'package:flutter/material.dart';

class Four extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("Ve Second");
    return new Container(
      child: new Center(
        child: new Column(
          // center the children
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Icon(
              Icons.card_giftcard,
              size: 160.0,
              color: Colors.pink,
            ),
            new Text("Four Tab")
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';


class screenLogin extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      home: new screenLoginStateful(),
    );
  }
}

class screenLoginStateful extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return screenLoginState();
  }
}

class screenLoginState extends State<screenLoginStateful> {
  final TextField _txtUsername = new TextField(
      decoration: new InputDecoration(
        hintText: "Tên đăng nhập",
        contentPadding: new EdgeInsets.all(10.0),
        border: InputBorder.none,
      ),
      keyboardType: TextInputType.text,
      autocorrect: false

  );
  final TextField _txtPassword = new TextField(
    decoration: new InputDecoration(
      hintText: "Mật khẩu",
      contentPadding: new EdgeInsets.all(10.0),
      border: InputBorder.none,
    ),
    keyboardType: TextInputType.text,
    autocorrect: false,
    obscureText:  true,

  );
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Stack(
          children: <Widget>[
            new Image.asset('images/login.jpg',
                fit: BoxFit.cover,
                height: double.infinity,
                width: double.infinity,
                alignment: Alignment.center),
            new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Container(
                  margin : new EdgeInsets.only(left: 20.0,right: 20.0,bottom: 10.0),
                  decoration:  new BoxDecoration(
                      color: new Color.fromARGB(255, 240, 240, 240),
                      border: new Border.all(width: 1.2,color: Colors.black12),
                      borderRadius: const BorderRadius.all(const Radius.circular(6.0))
                  ),
                  child: _txtUsername,
                ),
                new Container(
                  margin : new EdgeInsets.only(left: 20.0,right: 20.0,bottom: 10.0),
                  decoration:  new BoxDecoration(
                      color: new Color.fromARGB(255, 240, 240, 240),
                      border: new Border.all(width: 1.2,color: Colors.black12),
                      borderRadius: const BorderRadius.all(const Radius.circular(6.0))
                  ),
                  child: _txtPassword,
                ),
                new Container(
                  margin : new EdgeInsets.only(left: 20.0,right: 20.0),
                  child : new Row(
                    children: <Widget>[
                      new Expanded(
                        child: new RaisedButton(
                          color: Colors.blue,
                          textColor: Colors.white,
                          child:  new Text("Đăng nhập"),
                          onPressed: (){},
                          padding : new EdgeInsets.all(8.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        )
    );
  }
}
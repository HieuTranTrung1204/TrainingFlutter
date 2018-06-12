import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:image_picker/image_picker.dart';


void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  File _imageFile;
  Widget _buildImage() {
    if (_imageFile != null) {
      return new Image.file(_imageFile);
    } else {
      return new Text('Take an image to start', style: new TextStyle(fontSize: 18.0));
    }
  }
  Future getImage(int i) async {
    File result = null;

    if(i == 1)
      result = await ImagePicker.pickImage(source: ImageSource.gallery);
    if(i == 2)
      result = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      _imageFile = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Demo Camera"),
      ),
      body: new Column(
          children: [
            new Expanded(child: new Center(child: _buildImage())),
            _buildButtons()
          ]
      ),
    );
  }


  Widget _buildButtons() {
    return new ConstrainedBox(
        constraints: BoxConstraints.expand(height: 80.0),
        child: new Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              _buildActionButton(new Key('retake'), 'Photos', () => getImage(1)),
              _buildActionButton(new Key('upload'), 'Camera', () => getImage(2)),
            ]
        ));
  }

  Widget _buildActionButton(Key key, String text, Function onPressed) {
    return new Expanded(
      child: new FlatButton(
          key: key,
          child: new Text(text, style: new TextStyle(fontSize: 20.0)),
          shape: new RoundedRectangleBorder(),
          color: Colors.blueAccent,
          textColor: Colors.white,
          onPressed: onPressed),
    );
  }
}

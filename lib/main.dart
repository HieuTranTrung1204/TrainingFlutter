import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:http/http.dart' as http;

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
      home: new NetworkToLocalImage("https://www.dkn.tv/wp-content/uploads/2017/05/meo-nuoi-con-gai-dep-nhu-thien-than-medonthan-net2_.jpg"),
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

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Đây là title cách 1")
        // title: new Text(widget.title),
      ),
      body: new Center(
        child: new Text("Đây là body"),
      )
    );
  }
}



class NetworkToLocalImage extends StatefulWidget{
  String url = "https://www.dkn.tv/wp-content/uploads/2017/05/meo-nuoi-con-gai-dep-nhu-thien-than-medonthan-net2_.jpg";
  NetworkToLocalImage(this.url);

  @override
  _LoadImages createState() => new _LoadImages(url);
}

class _LoadImages extends State<NetworkToLocalImage>{

  String url;
  String filename;
  var dataBytes;

  _LoadImages(this.url){
    filename = Uri.parse(url).pathSegments.last;
    downloadImage().then((bytes){
      setState(() {
        dataBytes = bytes;
      });
    });
  }

  Future<dynamic> downloadImage() async {
    String dir = (await getExternalStorageDirectory()).path + "/Android/Data/com.example.trainingflutter/files";
//    String dir = (await getApplicationDocumentsDirectory()).path;
    print("HieuLog path: " + dir);
    File file = new File('$dir/$filename');

    if (file.existsSync()) {
      print('file already exist');
      var image = await file.readAsBytes();
      return image;
    } else {
      print('file not found downloading from server');
      var request = await http.get(url,);
      var bytes = await request.bodyBytes;//close();
      await file.writeAsBytes(bytes);
      print(file.path);
      return bytes;
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    if(dataBytes!=null)
      return new Image.memory(dataBytes);
    else return new CircularProgressIndicator();
  }
}

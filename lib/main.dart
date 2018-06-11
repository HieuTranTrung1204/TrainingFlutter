import 'package:flutter/material.dart';
import 'getLocation.dart';

void main() => runApp(new TestMaps());


class TestMaps extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: "Demo app",
        home : new TestMapsStateful()
    );
  }
}


class TestMapsStateful extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TestMapsState();
  }
}

class TestMapsState extends State<TestMapsStateful>{
  getLocationState getLocation = new getLocationState();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getLocation.getLocations();
    //
  }
  void check()
  {
    print("================" + (getLocationState.locations.location.latitude).toString());
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("This is Title."),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.list), onPressed: check),
        ],
      ),
      body: new ListView.builder(itemBuilder: (context,index){

      }),
    );
  }
}




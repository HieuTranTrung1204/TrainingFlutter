import 'dart:async';

import 'package:flutter/material.dart';
import 'package:map_view/map_view.dart';
import 'dart:io' show Platform;

///This API Key will be used for both the interactive maps as well as the static maps.
///Make sure that you have enabled the following APIs in the Google API Console (https://console.developers.google.com/apis)
/// - Static Maps API
/// - Android Maps API
/// - iOS Maps API
var API_KEY = "AIzaSyBkQhtYQS-9VamlmU3d8Oyn1jppXYP1oL0";

void main() {
  if (Platform.isAndroid) {
    // Android-specific code
    API_KEY = "AIzaSyC0Hfb-646j_idk_3g00MFlsCyrb1bbtBU";
  } else if (Platform.isIOS) {
    // iOS-specific code
    API_KEY = "AIzaSyChDykGNnauFgOC3gncrNHrOEaHRzoQ9fc";
    print("set API iOS Map: " + API_KEY);
  }

  MapView.setApiKey(API_KEY);
  runApp(new MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  MapView mapView = new MapView();
  CameraPosition cameraPosition;
  var compositeSubscription = new CompositeSubscription();
  var staticMapProvider = new StaticMapProvider(API_KEY);
  Uri staticMapUri;

  List<Marker> _markers = <Marker>[
    new Marker("1", "Work", 10.8139738,106.6900107, color: Colors.blue),
    new Marker("2", "Nossa Familia Coffee", 10.8139738,106.6900107),
  ];

  @override
  initState() {
    super.initState();
    cameraPosition = new CameraPosition(new Location(10.8139738,106.6900107), 0.0);
    staticMapUri = staticMapProvider.getStaticUri(new Location(10.8139738,106.6900107), 12,
        width: 900, height: 400, mapType: StaticMapViewType.roadmap);
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
          appBar: new AppBar(
            title: new Text('Map View Example'),
          ),
          body: new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              new Container(
                height: 250.0,
                child: new Stack(
                  children: <Widget>[
                    new Center(
                        child: new Container(
                          child: new Text(
                            "You are supposed to see a map here.\n\nAPI Key is not valid.\n\n"
                                "To view maps in the example application set the "
                                "API_KEY variable in example/lib/main.dart. "
                                "\n\nIf you have set an API Key but you still see this text "
                                "make sure you have enabled all of the correct APIs "
                                "in the Google API Console. See README for more detail.",
                            textAlign: TextAlign.center,
                          ),
                          padding: const EdgeInsets.all(20.0),
                        )),
                    new InkWell(
                      child: new Center(
                        child: new Image.network(staticMapUri.toString()),
                      ),
                      onTap: showMap,
                    ),
                    new Positioned(
                      bottom: 16.0,
                      right: 16.0,
                      child: new Container(
                        width: 100.0,
                        height: 100.0,
                        color: Colors.pink,
                      )
                    )
                  ],
                ),
              ),
              new Container(
                padding: new EdgeInsets.only(top: 25.0),
                child: new Text(
                    "Camera Position: \n\nLat: ${cameraPosition.center.latitude}\n\nLng:${cameraPosition.center.longitude}\n\nZoom: ${cameraPosition.zoom}"),
              ),
            ],
          )),
    );
  }

  showMap() {
    mapView.show(
        new MapOptions(
            mapViewType: MapViewType.normal,
            showUserLocation: true,
            initialCameraPosition: new CameraPosition(
                new Location(10.8139738,106.6900107), 2.0),
            title: "Recently Visited2",

        ),
        toolbarActions: [new ToolbarAction("Close", 1)],

        );

    var sub = mapView.onMapReady.listen((_) {
      mapView.setMarkers(_markers);
      mapView.addMarker(new Marker("3", "Hiếu test", 10.8139738,106.6900107,
          color: Colors.purple));
      mapView.addMarker(new Marker("4", "Hiếu test 1", 10.810164, 106.694081,
          color: Colors.purple));
      mapView.zoomToFit(padding: 100);

    });
    compositeSubscription.add(sub);

    sub = mapView.onLocationUpdated
        .listen((location) => print("Location updated $location"));
    compositeSubscription.add(sub);

    sub = mapView.onTouchAnnotation
        .listen((annotation) => print("annotation tapped"));
    compositeSubscription.add(sub);

    sub = mapView.onMapTapped
        .listen((location) => print("Touched location $location"));
    compositeSubscription.add(sub);

    sub = mapView.onCameraChanged.listen((cameraPosition) =>
        this.setState(() => this.cameraPosition = cameraPosition));
    compositeSubscription.add(sub);

    sub = mapView.onToolbarAction.listen((id) {
      if (id == 1) {
        _handleDismiss();
      }
    });
    compositeSubscription.add(sub);

    sub = mapView.onInfoWindowTapped.listen((marker) {
      print("Info Window Tapped for ${marker.title}");
    });
    compositeSubscription.add(sub);
  }

  _handleDismiss() async {
    double zoomLevel = await mapView.zoomLevel;
    Location centerLocation = await mapView.centerLocation;
    List<Marker> visibleAnnotations = await mapView.visibleAnnotations;
    print("Zoom Level: $zoomLevel");
    print("Center: $centerLocation");
    print("Visible Annotation Count: ${visibleAnnotations.length}");
    var uri = await staticMapProvider.getImageUriFromMap(mapView,
        width: 900, height: 400);
    setState(() => staticMapUri = uri);
    mapView.dismiss();
    compositeSubscription.cancel();
  }
}

class CompositeSubscription {
  Set<StreamSubscription> _subscriptions = new Set();

  void cancel() {
    for (var n in this._subscriptions) {
      n.cancel();
    }
    this._subscriptions = new Set();
  }

  void add(StreamSubscription subscription) {
    this._subscriptions.add(subscription);
  }

  void addAll(Iterable<StreamSubscription> subs) {
    _subscriptions.addAll(subs);
  }

  bool remove(StreamSubscription subscription) {
    return this._subscriptions.remove(subscription);
  }

  bool contains(StreamSubscription subscription) {
    return this._subscriptions.contains(subscription);
  }

  List<StreamSubscription> toList() {
    return this._subscriptions.toList();
  }
}


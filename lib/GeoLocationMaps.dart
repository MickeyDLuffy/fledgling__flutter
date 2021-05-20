import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'LocationMarker.dart';

class MyGeolocationDemo extends StatefulWidget {
  const MyGeolocationDemo({Key key}) : super(key: key);

  @override
  _MyGeolocationDemoState createState() => _MyGeolocationDemoState();
}

class _MyGeolocationDemoState extends State<MyGeolocationDemo> {
  LatLng _location = LatLng(25.221812, 84.989758);

  GoogleMapController mapController;

  void _mapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  void getCurrentLocation() async {
    print('getting current location');
    final Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);

    final CameraPosition myLocation = CameraPosition(
        target: LatLng(position.latitude, position.longitude),
        zoom: 114.0,
        bearing: 45.0,
        tilt: 50.0);

    setState(() async {
      final GoogleMapController myLocationController = await mapController;
      myLocationController
          .animateCamera(CameraUpdate.newCameraPosition(myLocation));
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Geolocation Demo')),
        body: GoogleMap(
          onMapCreated: _mapCreated,
          mapType: MapType.satellite,
          markers: {myMarker},
          initialCameraPosition: CameraPosition(target: _location, zoom: 13.0),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: getCurrentLocation,
          label: Text('My location'),
          icon: Icon(Icons.location_on),
        ),
      ),
    );
  }
}

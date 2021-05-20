import 'package:google_maps_flutter/google_maps_flutter.dart';

Marker myMarker = Marker(
    markerId: MarkerId('Allahabad Bank'),
    position: LatLng(25.219781, 84.988510),
    infoWindow: InfoWindow(title: "Allahabad Bank"),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueMagenta));

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Maps extends StatefulWidget {
  @override
  _MapsState createState() => _MapsState();
}

class _MapsState extends State<Maps> {

  Set<Marker> markers = {};

  final CameraPosition homeLocation = CameraPosition(
    target: LatLng(50.941278, 6.958281),
    zoom: 15,
  );

  void addMarker() {
    final marker = Marker(
      markerId: MarkerId("4"),
      position: LatLng(50.941278, 6.958281),
      infoWindow: InfoWindow(
          title: "Dä Dom zu Kölle!"
      ),
    );
    markers.add(marker);
    setState(() {
      markers = markers;
    });
  }

  @override
  void initState() {
    addMarker();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
          child: GoogleMap(
            initialCameraPosition: homeLocation,
            markers: markers,
          ),
        )
    );
  }
}

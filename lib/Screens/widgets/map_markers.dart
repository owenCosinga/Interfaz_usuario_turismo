import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:travelapp/Models/Destination.dart';

class MapMarkers extends StatefulWidget {
  const MapMarkers({ Key key, this.tipo , this.nameDestination }) : super(key: key);

  final String tipo;
  final String nameDestination;
  @override
  State<MapMarkers> createState() => _MapMarkersState();
}

class _MapMarkersState extends State<MapMarkers> {

  final _initialCameraPosition = const CameraPosition(
    target: LatLng(-13.533020998851041, -71.96431210342163),
    zoom: 8
  );
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
      child: Column(
        children: [
          Padding(
              padding: const EdgeInsets.all(30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back, size: 30),
                    onPressed: () => Navigator.of(context).pop(true),
                  ),
                  Text(
                    'Map',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 35,
                    ),
                  )
                ],
              ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 20),
            child: Center(
              child: SizedBox(
                width: 300,
                height: 450,
                child: GoogleMap(
                    // polylines: controller.polylines,
                    markers: addMakers(),
                    polygons: drawPolygone(),
                    initialCameraPosition: _initialCameraPosition,
                    // onTap: controller.onTap,
                ),
              )
            ),
          )
        ],
      )
      )
    );
  }
  Set<Marker> addMakers(){
    Set<Marker> _markers = new Set();
    List<Marker> listMakers = [];

    if (widget.tipo == 'all') {
      destinations.forEach((element) {
        final maker = Marker(
          markerId: MarkerId(element.name),
          position: element.position
        );

        listMakers.add(maker);
      });
    } else {
      destinations.forEach((element) {
        if(element.name == widget.nameDestination){
          final maker = Marker(
            markerId: MarkerId(element.name),
            position: element.position
          );

          listMakers.add(maker);
        };
      });
    }
    _markers.addAll(listMakers);

    return _markers;
  }

  Set<Polygon> drawPolygone(){
    Set<Polygon> _polygones = new Set();
    List<LatLng> polygonLatLongs = [];

    if(widget.tipo == 'all'){
      destinations.forEach((element) {
        polygonLatLongs.add(element.position);
      });
      _polygones.add( Polygon(
          polygonId: PolygonId("polygoGroup"),
          points: polygonLatLongs,
          strokeWidth: 3,
          strokeColor: Colors.blueAccent,
          fillColor: Colors.transparent
        )
      );
    }

    return _polygones;
  }
}
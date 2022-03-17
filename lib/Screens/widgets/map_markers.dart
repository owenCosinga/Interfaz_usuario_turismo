import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:travelapp/bloc/map_bloc.dart';

class MapMarkers extends StatefulWidget {
  const MapMarkers({ Key key }) : super(key: key);

  @override
  State<MapMarkers> createState() => _MapMarkersState();
}

class _MapMarkersState extends State<MapMarkers> {

  final _mapBloc = MapBloc();
  
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
                  // markers: _mapBloc.markers,
                  initialCameraPosition: _mapBloc.initialCameraPosition,
                ),
              ),
            ),
          )
        ],
      )
      )
    );
  }
}
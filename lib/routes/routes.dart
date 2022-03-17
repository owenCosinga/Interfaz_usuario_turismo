import 'package:flutter/material.dart';
import 'package:travelapp/Screens/HomeScreen.dart';
import 'package:travelapp/Screens/widgets/map_markers.dart';

Map<String, WidgetBuilder> getAplicationRoutes(){
  return <String, WidgetBuilder> {
    'home' : (BuildContext context) => HomeScreen(),
    'mapPreview' : (BuildContext context) => MapMarkers(),
  };
}
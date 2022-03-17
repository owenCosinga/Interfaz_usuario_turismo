
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapBloc {
  Map<MarkerId, Marker> _markers = {};
  Set<Marker> get markers => _markers.values.toSet();

  final initialCameraPosition = const CameraPosition(
    target: LatLng(-13.533020998851041, -71.96431210342163),
    zoom: 20
  );
}
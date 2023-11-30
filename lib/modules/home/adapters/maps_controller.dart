import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapsController extends ChangeNotifier {
  CameraPosition initialcameraPosition;
  final Map<MarkerId, Marker> _markers = {};

  MapsController(this.initialcameraPosition) {
    _addInitialMarkers();
  }

  void _addInitialMarkers() {
    const markerId = MarkerId("initial_marker");
    final marker =
        Marker(markerId: markerId, position: initialcameraPosition.target);
    _markers[markerId] = marker;
  }

  Set<Marker> get markers => _markers.values.toSet();

  void onTap(LatLng position) {
    _markers.clear();
    const markerId = MarkerId("last_marker");
    final marker = Marker(markerId: markerId, position: position);
    _markers[markerId] = marker;
    notifyListeners();
  }

  // void onMapCreated(GoogleMapController controller) {
  //   controller.setMapStyle(mapStyle);
  // }

  void updateCameraPosition(CameraPosition position) {
    initialcameraPosition = position;
    _addInitialMarkers();
    notifyListeners();
  }
}

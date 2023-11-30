import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:learning_app_a/modules/home/adapters/maps_controller.dart';
import 'package:permission_handler/permission_handler.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late final MapsController _controller;

  @override
  void initState() {
    super.initState();
    _controller = MapsController(const CameraPosition(
      target: LatLng(18.850639400746385, -99.20067048494809),
      zoom: 16,
    ));
    _controller.addListener(() {
      setState(() {});
    });

    _requestLocationPermission().then((_) {
      _determinePosition().then((position) {
        _controller.updateCameraPosition(CameraPosition(
          target: LatLng(position.latitude, position.longitude),
          zoom: 16,
        ));
      }).catchError((error) {
        // ignore: avoid_print
        print('Error al obtener la position: $error');
      });
    });
  }

  Future<void> _requestLocationPermission() async {
    var status = await Permission.location.request();
    if (!status.isGranted) {
      //permiso denegado
      print("Permiso de ubicación denegado: ");
      if (status.isPermanentlyDenied) {
        openAppSettings();
      }
    }
  }

  Future<Position> _determinePosition() async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error("Los servicios de ubicación esta desactivados");
    }

    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error("los permisos de ubicación fueron denegados");
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          "los permisos de ubicación estan permanentemente desactivados, no podemos hacer nada");
    }
    return await Geolocator.getCurrentPosition();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: _controller.initialcameraPosition,
        myLocationButtonEnabled: true,
        zoomGesturesEnabled: true,
        zoomControlsEnabled: true,
        onTap: _controller.onTap,
        mapType: MapType.satellite,
        markers: _controller.markers,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

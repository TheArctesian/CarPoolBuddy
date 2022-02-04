import 'package:flutter/material.dart';

class MapsWidget extends StatefulWidget {
  @override
  _MapsWidgetState createState() => _MapsWidgetState();
 
}
class _MapScreenState extends State<MapScreen> with TickerProviderStateMixin {
  GoogleMapController _mapController;
Container(
      child: const GoogleMap(
        initialCameraPosition: CameraPosition( 
          target: LatLng(22.3193, 114.1694), // Hong Kong
          zoom: 11.0,
        ),
      ),
    ),
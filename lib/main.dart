// ignore_for_file: library_private_types_in_public_api

import 'package:deliverycharges/homepage.dart';
import 'package:google_map_windows/google_map_windows.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late WindowsMapController mapController;
  int zoom = 17;
  final mkaaLocation = LatLng(lat: 21.422817474739336, lng: 39.826170262307336),
      islamabadlocation =
          LatLng(lat: 33.631839719918005, lng: 73.0682552184906);
  TextEditingController latController = TextEditingController(),
      lngController = TextEditingController();
  TextEditingController westController = TextEditingController(),
      eastController = TextEditingController(),
      southController = TextEditingController(),
      northController = TextEditingController();
  List<LatLng> alAqsaPP = [
    LatLng.fromMap({"lat": 33.69641875648699, "lng": 72.9110134121197}),
    LatLng.fromMap({"lat": 33.45156285341396, "lng": 73.15202596249607}),
    LatLng.fromMap({"lat": 33.68442101041671, "lng": 73.38479876756043}),
    LatLng.fromMap({"lat": 33.69641875648699, "lng": 72.9110134121197}),
  ];
  void btnClicked() async {}

  @override
  void initState() {
    mapController = WindowsMapController();

    mapController.initMap();
    mapController.onZoomChanged = (zoomValue) {
      setState(() => zoom = zoomValue);
    };
    mapController.onCenterChanged = (LatLng center) {
      latController.text = center.lat.toString();
      lngController.text = center.lng.toString();
    };
    mapController.onBoundsChanged = (LatLngBounds bounds) {
      westController.text = bounds.west.toString();
      eastController.text = bounds.east.toString();
      southController.text = bounds.south.toString();
      northController.text = bounds.north.toString();
    };
    mapController.onMapInitialed = () {
      mapController.apiKey = '';
      for (var element in markerlist) {
        Marker markerlist = Marker(position: element, title: 'Islamabad');
        mapController.addMarker(markerlist);
      }

      Polygon polygon = Polygon(
          paths: [
            alAqsaPP,
          ],
          fillColor: Colors.blue.shade100,
          strokeColor: Colors.red.shade200,
          fillOpacity: .4);
      mapController.addPolygon(polygon);
    };
    super.initState();
  }

  List<LatLng> markerlist = [
    LatLng(lat: 33.631839719918005, lng: 73.0682552184906),
  ];

  void zoomIn() async {
    mapController.setZoom(this.zoom + 1);
    int zoom = await mapController.getZoom();
    setState(() => this.zoom = zoom);
  }

  void zoomOut() async {
    mapController.setZoom(this.zoom - 1);
    int zoom = await mapController.getZoom();
    setState(() => this.zoom = zoom);
  }

  void setCenter(LatLng center) => mapController.setCenter(center);

  void panTo() => mapController.panTo(LatLng(
      lat: double.parse(latController.text),
      lng: double.parse(lngController.text)));

  void setBounds() => mapController.fitBounds(LatLngBounds(
      west: double.parse(westController.text),
      east: double.parse(eastController.text),
      south: double.parse(southController.text),
      north: double.parse(northController.text)));

  void panToBounds() => mapController.panToBounds(LatLngBounds(
      west: double.parse(westController.text),
      east: double.parse(eastController.text),
      south: double.parse(southController.text),
      north: double.parse(northController.text)));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: WindowsMap(
            controller: mapController, zoom: zoom, center: islamabadlocation),
      ),
    );
  }
}

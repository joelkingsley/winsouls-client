import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapAreaDetailPage extends StatefulWidget {
  final String title;

  const MapAreaDetailPage({super.key, required this.title});

  @override
  State<MapAreaDetailPage> createState() => _MapAreaDetailPageState();
}

class _MapAreaDetailPageState extends State<MapAreaDetailPage> {
  late GoogleMapController mapController;
  late TextEditingController _titleController;
  final LatLng _center = const LatLng(45.521563, -122.677433);

  @override
  void initState() {
    super.initState();
    _titleController = TextEditingController(text: 'Around the church');
  }

  @override
  void dispose() {
    _titleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Map Area Detail'),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: _titleController,
                textAlign: TextAlign.start,
                decoration: const InputDecoration(
                  label: Text('Title (Eg. Around the church)'),
                  border: OutlineInputBorder(),
                ),
                onSubmitted: (String text) => (),
              ),
            ),
            SizedBox(
                height: 500,
                child: GoogleMap(
                  onMapCreated: _onMapCreated,
                  initialCameraPosition: CameraPosition(
                    target: _center,
                    zoom: 11.0,
                  ),
                )),
          ],
        ),
      ),
    );
  }

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }
}

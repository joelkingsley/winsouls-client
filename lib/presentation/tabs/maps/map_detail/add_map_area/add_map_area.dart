import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class AddMapAreaPage extends StatefulWidget {
  const AddMapAreaPage({super.key});

  @override
  State<AddMapAreaPage> createState() => _AddMapAreaPageState();
}

class _AddMapAreaPageState extends State<AddMapAreaPage> {
  late GoogleMapController mapController;
  late TextEditingController _titleController;
  final LatLng _center = const LatLng(45.521563, -122.677433);

  @override
  void initState() {
    super.initState();
    _titleController = TextEditingController(text: '');
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
        title: const Text('Add Map Area'),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: _titleController,
                    textAlign: TextAlign.start,
                    onSubmitted: (String text) => (),
                    decoration: const InputDecoration(
                        label: Text('Title (Eg. Around the church)'),
                        border: OutlineInputBorder()),
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
          ],
        ),
      ),
    );
  }

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }
}

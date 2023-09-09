import 'package:flutter/cupertino.dart';

class MapAreaDetailPage extends StatefulWidget {
  final String title;

  const MapAreaDetailPage({super.key, required this.title});

  @override
  State<MapAreaDetailPage> createState() => _MapAreaDetailPageState();
}

class _MapAreaDetailPageState extends State<MapAreaDetailPage> {
  late TextEditingController _titleController;
  late TextEditingController _subtitleController;

  @override
  void initState() {
    super.initState();
    _titleController = TextEditingController(text: 'Around the church');
  }

  @override
  void dispose() {
    _titleController.dispose();
    _subtitleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Map Area Detail'),
      ),
      child: SafeArea(
        child: ListView(
          children: <Widget>[
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: CupertinoTextField(
                    controller: _titleController,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 25),
                    placeholder: 'Title (Eg. Around the church)',
                    onSubmitted: (String text) => (),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

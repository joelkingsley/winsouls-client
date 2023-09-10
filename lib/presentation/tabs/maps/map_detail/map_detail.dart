import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:winsouls/presentation/tabs/maps/map_detail/add_map_area/add_map_area.dart';
import 'package:winsouls/presentation/tabs/maps/map_detail/map_area_detail/map_area_detail.dart';

class MapDetailPage extends StatefulWidget {
  final String title;

  const MapDetailPage({super.key, required this.title});

  @override
  State<MapDetailPage> createState() => _MapDetailPageState();
}

class _MapDetailPageState extends State<MapDetailPage> {
  late TextEditingController _titleController;
  late TextEditingController _subtitleController;

  @override
  void initState() {
    super.initState();
    _titleController = TextEditingController(text: widget.title);
    _subtitleController = TextEditingController(text: 'City center');
  }

  @override
  void dispose() {
    _titleController.dispose();
    _subtitleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Map Detail'),
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
                    decoration: const InputDecoration(
                        label: Text('Title (Eg. Pforzheim City)'),
                        border: OutlineInputBorder()),
                    onSubmitted: (String text) => (),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                  child: TextField(
                    controller: _subtitleController,
                    textAlign: TextAlign.start,
                    decoration: const InputDecoration(
                        label:
                            Text('Subtitle (Eg. Around the church) (optional)'),
                        border: OutlineInputBorder()),
                    onSubmitted: (String text) => (),
                  ),
                ),
                FloatingActionButton.extended(
                    label: const Text('Update Details'), onPressed: () => ()),
                const Padding(
                  padding: EdgeInsets.all(15),
                  child: Divider(),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'Map Areas',
                      style:
                          TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
                    ),
                  ),
                  FloatingActionButton.extended(
                    label: const Text('Add Map Area'),
                    icon: const Icon(Icons.add),
                    onPressed: () => Navigator.of(context).push(
                      CupertinoPageRoute<void>(
                        builder: (BuildContext context) {
                          return const AddMapAreaPage();
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(padding: EdgeInsets.only(bottom: 10)),
            Card(
              child: ListTile(
                title: const Text('Around the church'),
                trailing: const CupertinoListTileChevron(),
                onTap: () => Navigator.of(context).push(
                  CupertinoPageRoute<void>(
                    builder: (BuildContext context) {
                      return const MapAreaDetailPage(
                          title: 'Around the church');
                    },
                  ),
                ),
              ),
            ),
            Card(
              child: CupertinoListTile(
                title: const Text('Near the park'),
                trailing: const CupertinoListTileChevron(),
                onTap: () => Navigator.of(context).push(
                  CupertinoPageRoute<void>(
                    builder: (BuildContext context) {
                      return const MapAreaDetailPage(title: 'Near the park');
                    },
                  ),
                ),
              ),
            ),
            Card(
              child: CupertinoListTile(
                title: const Text('Around the university'),
                trailing: const CupertinoListTileChevron(),
                onTap: () => Navigator.of(context).push(
                  CupertinoPageRoute<void>(
                    builder: (BuildContext context) {
                      return const MapAreaDetailPage(
                          title: 'Around the university');
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

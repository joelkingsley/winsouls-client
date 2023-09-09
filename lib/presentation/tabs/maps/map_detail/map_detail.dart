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
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Map'),
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
                    placeholder: 'Title (Eg. Pforzheim City)',
                    onSubmitted: (String text) => (),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                  child: CupertinoTextField(
                    controller: _subtitleController,
                    textAlign: TextAlign.center,
                    placeholder: 'Subtitle (Eg. Around the church) (optional)',
                    onSubmitted: (String text) => (),
                  ),
                ),
                CupertinoButton.filled(
                    child: const Text('Update Details'), onPressed: () => ()),
                const Padding(
                  padding: EdgeInsets.all(15),
                  child: Divider(),
                ),
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Map Areas',
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CupertinoButton(
                  child: const Text('Add Map Area'),
                  onPressed: () => Navigator.of(context).push(
                    CupertinoPageRoute<void>(
                      builder: (BuildContext context) {
                        return const AddMapAreaPage();
                      },
                    ),
                  ),
                )
              ],
            ),
            const Padding(padding: EdgeInsets.only(bottom: 10)),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: CupertinoSearchTextField(),
            ),
            CupertinoListSection(
              backgroundColor: CupertinoColors.systemBackground,
              children: <CupertinoListTile>[
                CupertinoListTile(
                  title: const Text('Around the church'),
                  leading: Container(
                    width: double.infinity,
                    height: double.infinity,
                    color: CupertinoColors.systemBlue,
                  ),
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
                CupertinoListTile(
                  title: const Text('Near the park'),
                  leading: Container(
                    width: double.infinity,
                    height: double.infinity,
                    color: CupertinoColors.systemRed,
                  ),
                  trailing: const CupertinoListTileChevron(),
                  onTap: () => Navigator.of(context).push(
                    CupertinoPageRoute<void>(
                      builder: (BuildContext context) {
                        return const MapAreaDetailPage(title: 'Near the park');
                      },
                    ),
                  ),
                ),
                CupertinoListTile(
                  title: const Text('Around the university'),
                  leading: Container(
                    width: double.infinity,
                    height: double.infinity,
                    color: CupertinoColors.systemGreen,
                  ),
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}

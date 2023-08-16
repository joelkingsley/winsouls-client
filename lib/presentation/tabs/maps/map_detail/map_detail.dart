import 'package:flutter/cupertino.dart';
import 'package:winsouls/presentation/tabs/maps/map_detail/add_map_area/add_map_area.dart';

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
    _titleController = TextEditingController(text: 'Pforzheim City');
    _subtitleController = TextEditingController(text: 'Around the church');
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
                CupertinoTextField(
                  controller: _titleController,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 25),
                  placeholder: 'Title (Eg. Pforzheim City)',
                  onSubmitted: (String text) => (),
                ),
                CupertinoTextField(
                  controller: _subtitleController,
                  textAlign: TextAlign.center,
                  placeholder: 'Subtitle (Eg. Around the church) (optional)',
                  onSubmitted: (String text) => (),
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
            CupertinoListSection.insetGrouped(
              backgroundColor: CupertinoColors.systemBackground,
              children: <CupertinoListTile>[
                CupertinoListTile(
                  title: const Text('City 1'),
                  trailing: const CupertinoListTileChevron(),
                  onTap: () => Navigator.of(context).push(
                    CupertinoPageRoute<void>(
                      builder: (BuildContext context) {
                        return const MapDetailPage(title: 'Pforzheim City');
                      },
                    ),
                  ),
                ),
                CupertinoListTile(
                  title: const Text('City 2'),
                  trailing: const CupertinoListTileChevron(),
                  onTap: () => Navigator.of(context).push(
                    CupertinoPageRoute<void>(
                      builder: (BuildContext context) {
                        return const MapDetailPage(title: 'Magdeburg City');
                      },
                    ),
                  ),
                ),
                CupertinoListTile(
                  title: const Text('City 3'),
                  trailing: const CupertinoListTileChevron(),
                  onTap: () => Navigator.of(context).push(
                    CupertinoPageRoute<void>(
                      builder: (BuildContext context) {
                        return const MapDetailPage(
                            title: 'Paderborn University');
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

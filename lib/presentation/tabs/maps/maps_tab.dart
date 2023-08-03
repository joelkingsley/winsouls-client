import 'package:flutter/cupertino.dart';
import 'package:winsouls/presentation/tabs/maps/map_detail/map_detail.dart';

class MapsTabPage extends StatefulWidget {
  const MapsTabPage({super.key});

  @override
  State<MapsTabPage> createState() => _MapsTabPageState();
}

class _MapsTabPageState extends State<MapsTabPage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Maps'),
      ),
      child: CupertinoListSection.insetGrouped(
        header: const Text('My Reminders'),
        children: <CupertinoListTile>[
          CupertinoListTile.notched(
            title: const Text('Open pull request'),
            leading: Container(
              width: double.infinity,
              height: double.infinity,
              color: CupertinoColors.activeGreen,
            ),
            trailing: const CupertinoListTileChevron(),
            onTap: () => Navigator.of(context).push(
              CupertinoPageRoute<void>(
                builder: (BuildContext context) {
                  return const MapDetailPage();
                },
              ),
            ),
          ),
          CupertinoListTile.notched(
            title: const Text('Push to master'),
            leading: Container(
              width: double.infinity,
              height: double.infinity,
              color: CupertinoColors.systemRed,
            ),
            additionalInfo: const Text('Not available'),
          ),
          CupertinoListTile.notched(
            title: const Text('View last commit'),
            leading: Container(
              width: double.infinity,
              height: double.infinity,
              color: CupertinoColors.activeOrange,
            ),
            additionalInfo: const Text('12 days ago'),
            trailing: const CupertinoListTileChevron(),
            onTap: () => Navigator.of(context).push(
              CupertinoPageRoute<void>(
                builder: (BuildContext context) {
                  return const MapDetailPage();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

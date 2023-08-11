import 'package:flutter/cupertino.dart';
import 'package:winsouls/presentation/tabs/home/event_detail/event_detail.dart';

class HomeTabPage extends StatefulWidget {
  const HomeTabPage({super.key});

  @override
  State<HomeTabPage> createState() => _HomeTabPageState();
}

enum EventStatus { current, upcoming }

class _HomeTabPageState extends State<HomeTabPage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Home'),
        trailing: Icon(CupertinoIcons.qrcode),
      ),
      child: ListView(
        children: [
          CupertinoListSection.insetGrouped(
              backgroundColor: CupertinoColors.systemBackground,
              header: const Row(
                children: [
                  Text('Current Events'),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 2)),
                  Icon(CupertinoIcons.antenna_radiowaves_left_right)
                ],
              ),
              children: <CupertinoListTile>[
                CupertinoListTile.notched(
                  title: const Text('Monthly Soul Winning Marathon'),
                  subtitle: const Text('Baptistenkirche Zuverlässiges Wort'),
                  trailing: const CupertinoListTileChevron(),
                  onTap: () => Navigator.of(context).push(
                    CupertinoPageRoute<void>(
                      builder: (BuildContext context) {
                        return const EventDetailPage();
                      },
                    ),
                  ),
                )
              ]),
          CupertinoListSection.insetGrouped(
            backgroundColor: CupertinoColors.systemBackground,
            header: const Text('Upcoming Events'),
            footer: Center(
              child: CupertinoButton(
                  child: const Text('See all'), onPressed: () => ()),
            ),
            children: [
              CupertinoListTile.notched(
                title: const Text('Soul Winning Magdeburg'),
                subtitle: const Text('Baptistenkirche Zuverlässiges Wort'),
                trailing: const CupertinoListTileChevron(),
                additionalInfo: const Text('In 7 days'),
                onTap: () => Navigator.of(context).push(
                  CupertinoPageRoute<void>(
                    builder: (BuildContext context) {
                      return const EventDetailPage();
                    },
                  ),
                ),
              ),
              CupertinoListTile.notched(
                title: const Text('Soul Winning Passau'),
                subtitle: const Text('Baptistenkirche Zuverlässiges Wort'),
                additionalInfo: const Text('In 3 days'),
                trailing: const CupertinoListTileChevron(),
                onTap: () => Navigator.of(context).push(
                  CupertinoPageRoute<void>(
                    builder: (BuildContext context) {
                      return const EventDetailPage();
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

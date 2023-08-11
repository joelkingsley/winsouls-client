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
      ),
      child: ListView(
        children: [
          CupertinoListSection(
              backgroundColor: CupertinoColors.systemBackground,
              header: const Text('Current Events'),
              children: <CupertinoListTile>[
                CupertinoListTile.notched(
                  title: const Text('Monthly Soul Winning Marathon'),
                  subtitle: const Text('Baptistenkirche Zuverlässiges Wort'),
                  leading: Container(
                    width: double.infinity,
                    height: double.infinity,
                    color: CupertinoColors.activeGreen,
                  ),
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
          CupertinoListSection(
            backgroundColor: CupertinoColors.systemBackground,
            header: const Text('Upcoming Events'),
            children: [
              CupertinoListTile.notched(
                title: const Text('Soul Winning Magdeburg'),
                subtitle: const Text('Baptistenkirche Zuverlässiges Wort'),
                leading: Container(
                  width: double.infinity,
                  height: double.infinity,
                  color: CupertinoColors.systemRed,
                ),
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
                leading: Container(
                  width: double.infinity,
                  height: double.infinity,
                  color: CupertinoColors.activeOrange,
                ),
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
          )
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: const [Icon(Icons.qr_code)],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FloatingActionButton.extended(
                    label: const Text('Add Event'),
                    icon: const Icon(Icons.add),
                    onPressed: () => ()),
              ],
            ),
          ),
          Card(
            child: ListTile(
              title: const Text('Monthly Soul Winning Marathon'),
              subtitle: const Text('Baptistenkirche Zuverlässiges Wort'),
              onTap: () => Navigator.of(context).push(
                CupertinoPageRoute<void>(
                  builder: (BuildContext context) {
                    return const EventDetailPage();
                  },
                ),
              ),
            ),
          ),
          Card(
            child: ListTile(
              title: const Text('Soul Winning Magdeburg'),
              subtitle: const Text('Baptistenkirche Zuverlässiges Wort'),
              trailing: const Text('In 3 days'),
              onTap: () => Navigator.of(context).push(
                CupertinoPageRoute<void>(
                  builder: (BuildContext context) {
                    return const EventDetailPage();
                  },
                ),
              ),
            ),
          ),
          Card(
            child: ListTile(
              title: const Text('Soul Winning Passau'),
              subtitle: const Text('Baptistenkirche Zuverlässiges Wort'),
              trailing: const Text('In 9 days'),
              onTap: () => Navigator.of(context).push(
                CupertinoPageRoute<void>(
                  builder: (BuildContext context) {
                    return const EventDetailPage();
                  },
                ),
              ),
            ),
          ),
          Center(
            child: CupertinoButton(
                child: const Text('See all'), onPressed: () => ()),
          ),
        ],
      ),
    );
  }
}

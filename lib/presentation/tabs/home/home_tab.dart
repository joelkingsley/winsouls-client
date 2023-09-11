import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:winsouls/domain/entities/event.dart';
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
                    return EventDetailPage(
                      event: Event(
                          '1',
                          'Monthly Soul Winning Marathon',
                          'https://i0.wp.com/baptisten-zuverlaessiges-wort.church/wp-content/uploads/2022/08/BKZW-scaled.jpg?resize=1200%2C750&ssl=1',
                          'Auch wenn Sie noch keine Erfahrung im Seelengewinnen haben, können Sie gerne als stiller Partner dabei sein und lernen, wie wir evangelisieren. Auf der Seite Seelengewinnen finden Sie weitere Informationen zum Thema Seelengewinnen. Sie können uns auch gerne jederzeit eine E-Mail schreiben, falls Sie weitere Fragen haben: post@bkzw.church.',
                          '',
                          DateTime.utc(2023, 9, 22, 9),
                          DateTime.utc(2023, 9, 23, 18), []),
                    );
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
                    return EventDetailPage(
                        event: Event(
                            '2',
                            'Soul Winning Magdeburg',
                            'https://i0.wp.com/baptisten-zuverlaessiges-wort.church/wp-content/uploads/2022/08/BKZW-scaled.jpg?resize=1200%2C750&ssl=1',
                            'Auch wenn Sie noch keine Erfahrung im Seelengewinnen haben, können Sie gerne als stiller Partner dabei sein und lernen, wie wir evangelisieren. Auf der Seite Seelengewinnen finden Sie weitere Informationen zum Thema Seelengewinnen. Sie können uns auch gerne jederzeit eine E-Mail schreiben, falls Sie weitere Fragen haben: post@bkzw.church.',
                            '',
                            DateTime.utc(2023, 10, 22, 9),
                            DateTime.utc(2023, 10, 23, 18), []));
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
                    return EventDetailPage(
                        event: Event(
                            '3',
                            'Soul Winning Passau',
                            'https://i0.wp.com/baptisten-zuverlaessiges-wort.church/wp-content/uploads/2022/08/BKZW-scaled.jpg?resize=1200%2C750&ssl=1',
                            'Auch wenn Sie noch keine Erfahrung im Seelengewinnen haben, können Sie gerne als stiller Partner dabei sein und lernen, wie wir evangelisieren. Auf der Seite Seelengewinnen finden Sie weitere Informationen zum Thema Seelengewinnen. Sie können uns auch gerne jederzeit eine E-Mail schreiben, falls Sie weitere Fragen haben: post@bkzw.church.',
                            '',
                            DateTime.utc(2023, 11, 22, 9),
                            DateTime.utc(2023, 11, 23, 18), []));
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

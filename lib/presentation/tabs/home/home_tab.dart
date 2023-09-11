import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:winsouls/domain/entities/event.dart';
import 'package:winsouls/domain/entities/home_event.dart';
import 'package:winsouls/domain/entities/home_organization.dart';
import 'package:winsouls/domain/entities/organization_type.dart';
import 'package:winsouls/presentation/tabs/home/event_detail/event_detail.dart';

class HomeTabPage extends StatefulWidget {
  final List<HomeEvent> events = [
    HomeEvent(
      '1',
      'Monthly Soul Winning Marathon',
      HomeOrganization(
          'Baptistenkirche Zuverlässiges Wort', OrganizationType.church),
      'https://i0.wp.com/baptisten-zuverlaessiges-wort.church/wp-content/uploads/2022/08/BKZW-scaled.jpg?resize=1200%2C750&ssl=1',
      'Auch wenn Sie noch keine Erfahrung im Seelengewinnen haben, können Sie gerne als stiller Partner dabei sein und lernen, wie wir evangelisieren. Auf der Seite Seelengewinnen finden Sie weitere Informationen zum Thema Seelengewinnen. Sie können uns auch gerne jederzeit eine E-Mail schreiben, falls Sie weitere Fragen haben: post@bkzw.church.',
      'Samstag\n\n10:30 Uhr Treff zum Seelengewinnen an der Kirche\nfür Mittagessen für alle Teilnehmer wird gesorgt\n18:00 Uhr Gottesdienst mit Predigt live aus Tempe, Arizona\nfür Abendessen für alle Teilnehmer wird gesorgt\n\n\nSonntag\n\n10:30 Uhr Gottesdienst\nfür Mittagessen für alle Teilnehmer wird gesorgt Seelengewinnen',
      DateTime.utc(2023, 9, 22, 9),
      DateTime.utc(2023, 9, 23, 18),
    ),
    HomeEvent(
      '2',
      'Soul Winning Magdeburg',
      HomeOrganization(
          'Baptistenkirche Zuverlässiges Wort', OrganizationType.church),
      'https://i0.wp.com/baptisten-zuverlaessiges-wort.church/wp-content/uploads/2022/08/BKZW-scaled.jpg?resize=1200%2C750&ssl=1',
      'Auch wenn Sie noch keine Erfahrung im Seelengewinnen haben, können Sie gerne als stiller Partner dabei sein und lernen, wie wir evangelisieren. Auf der Seite Seelengewinnen finden Sie weitere Informationen zum Thema Seelengewinnen. Sie können uns auch gerne jederzeit eine E-Mail schreiben, falls Sie weitere Fragen haben: post@bkzw.church.',
      'Samstag\n\n10:30 Uhr Treff zum Seelengewinnen an der Kirche\nfür Mittagessen für alle Teilnehmer wird gesorgt\n18:00 Uhr Gottesdienst mit Predigt live aus Tempe, Arizona\nfür Abendessen für alle Teilnehmer wird gesorgt\n\n\nSonntag\n\n10:30 Uhr Gottesdienst\nfür Mittagessen für alle Teilnehmer wird gesorgt Seelengewinnen',
      DateTime.utc(2023, 10, 22, 9),
      DateTime.utc(2023, 10, 23, 18),
    ),
    HomeEvent(
      '3',
      'Soul Winning Passau',
      HomeOrganization(
          'Baptistenkirche Zuverlässiges Wort', OrganizationType.church),
      'https://i0.wp.com/baptisten-zuverlaessiges-wort.church/wp-content/uploads/2022/08/BKZW-scaled.jpg?resize=1200%2C750&ssl=1',
      'Auch wenn Sie noch keine Erfahrung im Seelengewinnen haben, können Sie gerne als stiller Partner dabei sein und lernen, wie wir evangelisieren. Auf der Seite Seelengewinnen finden Sie weitere Informationen zum Thema Seelengewinnen. Sie können uns auch gerne jederzeit eine E-Mail schreiben, falls Sie weitere Fragen haben: post@bkzw.church.',
      'Samstag\n\n10:30 Uhr Treff zum Seelengewinnen an der Kirche\nfür Mittagessen für alle Teilnehmer wird gesorgt\n18:00 Uhr Gottesdienst mit Predigt live aus Tempe, Arizona\nfür Abendessen für alle Teilnehmer wird gesorgt\n\n\nSonntag\n\n10:30 Uhr Gottesdienst\nfür Mittagessen für alle Teilnehmer wird gesorgt Seelengewinnen',
      DateTime.utc(2023, 11, 22, 9),
      DateTime.utc(2023, 11, 23, 18),
    )
  ];

  HomeTabPage({super.key});

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
          for (var event in widget.events)
            Card(
              child: ListTile(
                title: Text(event.title),
                subtitle: Text(event.organization.name),
                onTap: () => Navigator.of(context).push(
                  CupertinoPageRoute<void>(
                    builder: (BuildContext context) {
                      return EventDetailPage(
                        event: Event(
                            event.id,
                            event.title,
                            event.coverPhotoUrl,
                            event.whatToExpect,
                            event.eventPlan,
                            event.scheduledStartTimeInUtc,
                            event.scheduledEndTimeInUtc, []),
                      );
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

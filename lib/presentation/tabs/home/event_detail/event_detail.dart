import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:winsouls/domain/entities/event.dart';
import 'package:winsouls/presentation/styles/dark_mode.dart';
import 'package:winsouls/presentation/tabs/home/event_detail/event_detail_provider.dart';
import 'package:winsouls/presentation/tabs/home/event_detail/session_detail/session_detail.dart';

class EventDetailPage extends ConsumerWidget {
  final String eventId;
  const EventDetailPage({super.key, required this.eventId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final getEventDetailUseCase = ref.watch(getEventDetailUseCaseProvider);

    return Scaffold(
        appBar: AppBar(
          title: const Text('Event'),
          actions: const [Icon(Icons.qr_code)],
        ),
        body: FutureBuilder<Event>(
            future: getEventDetailUseCase.execute(eventId),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator();
              } else if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              } else {
                final data = snapshot.data;
                if (snapshot.hasData && data != null) {
                  return ListView(
                    children: [
                      Column(children: [
                        Stack(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 200,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.fitWidth,
                                  image: NetworkImage(data.coverPhotoUrl),
                                ),
                              ),
                            ),
                            Container(
                              height: 200,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: context.isDarkMode
                                    ? [
                                        Colors.white.withOpacity(0.0),
                                        Colors.white
                                      ]
                                    : [
                                        Colors.white.withOpacity(0.0),
                                        Colors.white
                                      ],
                              )),
                            ),
                          ],
                        ),
                      ]),
                      SafeArea(
                        child: Text(
                          '${data.scheduledStartTimeInUtc.toLocal().day}/${data.scheduledStartTimeInUtc.toLocal().month}/${data.scheduledStartTimeInUtc.toLocal().year} (${data.scheduledStartTimeInUtc.toLocal().hour.toString().padLeft(2, '0')}:${data.scheduledStartTimeInUtc.toLocal().minute.toString().padLeft(2, '0')}) - ${data.scheduledEndTimeInUtc.toLocal().day}/${data.scheduledEndTimeInUtc.toLocal().month}/${data.scheduledEndTimeInUtc.toLocal().year} (${data.scheduledEndTimeInUtc.toLocal().hour.toString().padLeft(2, '0')}:${data.scheduledEndTimeInUtc.toLocal().minute.toString().padLeft(2, '0')})',
                          style: const TextStyle(fontWeight: FontWeight.w300),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SafeArea(
                        child: Text(
                          data.title,
                          style: const TextStyle(
                              fontWeight: FontWeight.w900, fontSize: 30),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SafeArea(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 9,
                                child: ElevatedButton(
                                    child: const Text('Interested'),
                                    onPressed: () => ()),
                              ),
                              const Padding(
                                  padding: EdgeInsets.only(right: 10)),
                              Expanded(
                                flex: 1,
                                child: CupertinoButton(
                                    child: const Icon(Icons.more_vert),
                                    onPressed: () => ()),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'What to expect',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w800),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          data.whatToExpect,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'Event plan',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w800),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          data.eventPlan,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'Sessions',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w800),
                        ),
                      ),
                      data.sessions.isNotEmpty
                          ? Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Column(
                                    children: [
                                      for (var session in data.sessions)
                                        Card(
                                          child: ListTile(
                                            title: Text(session.name),
                                            subtitle: Text(
                                              '${session.scheduledStartTimeInUtc.toLocal().day}/${session.scheduledStartTimeInUtc.toLocal().month}/${session.scheduledStartTimeInUtc.toLocal().year} (${session.scheduledStartTimeInUtc.toLocal().hour.toString().padLeft(2, '0')}:${session.scheduledStartTimeInUtc.toLocal().minute.toString().padLeft(2, '0')}) - ${session.scheduledEndTimeInUtc.toLocal().day}/${session.scheduledEndTimeInUtc.toLocal().month}/${session.scheduledEndTimeInUtc.toLocal().year} (${session.scheduledEndTimeInUtc.toLocal().hour.toString().padLeft(2, '0')}:${session.scheduledEndTimeInUtc.toLocal().minute.toString().padLeft(2, '0')})',
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.w300),
                                              textAlign: TextAlign.start,
                                            ),
                                            onTap: () =>
                                                Navigator.of(context).push(
                                              CupertinoPageRoute<void>(
                                                builder:
                                                    (BuildContext context) {
                                                  return SessionDetailPage(
                                                    session: session,
                                                  );
                                                },
                                              ),
                                            ),
                                          ),
                                        )
                                    ],
                                  ),
                                ),
                              ],
                            )
                          : const SizedBox.shrink(),
                    ],
                  );
                } else {
                  return ListView();
                }
              }
            }));
  }
}

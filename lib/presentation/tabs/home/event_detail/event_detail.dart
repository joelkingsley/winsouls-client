import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:winsouls/domain/entities/event.dart';
import 'package:winsouls/presentation/styles/dark_mode.dart';

class EventDetailPage extends StatelessWidget {
  final Event event;

  const EventDetailPage({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Event'),
        actions: const [Icon(Icons.qr_code)],
      ),
      body: ListView(
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
                      image: NetworkImage(event.coverPhotoUrl),
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
                        ? [Colors.white.withOpacity(0.0), Colors.white]
                        : [Colors.white.withOpacity(0.0), Colors.white],
                  )),
                ),
              ],
            ),
          ]),
          const SafeArea(
            child: Text(
              '5 APR AT 10:00 - 9 APR AT 07:00',
              style: TextStyle(fontWeight: FontWeight.w300),
              textAlign: TextAlign.center,
            ),
          ),
          SafeArea(
            child: Text(
              event.title,
              style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 30),
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
                        child: const Text('Interested'), onPressed: () => ()),
                  ),
                  const Padding(padding: EdgeInsets.only(right: 10)),
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
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              event.whatToExpect,
            ),
          ),
        ],
      ),
    );
  }
}

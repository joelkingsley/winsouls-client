import 'package:flutter/cupertino.dart';
import 'package:winsouls/presentation/styles/dark_mode.dart';

class EventDetailPage extends StatelessWidget {
  const EventDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Event'),
      ),
      child: ListView(
        children: [
          Column(children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fitWidth,
                      image: NetworkImage(
                          'https://i0.wp.com/baptisten-zuverlaessiges-wort.church/wp-content/uploads/2022/08/BKZW-scaled.jpg?resize=1200%2C750&ssl=1'),
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
                            CupertinoColors.black.withOpacity(0.0),
                            CupertinoColors.black
                          ]
                        : [
                            CupertinoColors.white.withOpacity(0.0),
                            CupertinoColors.white
                          ],
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
          const SafeArea(
            child: Text(
              'Seelengewinnen-Mega-Marathon',
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 30),
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
                    child: CupertinoButton.filled(
                        child: const Text('Interested'), onPressed: () => ()),
                  ),
                  const Padding(padding: EdgeInsets.only(right: 10)),
                  Expanded(
                    flex: 1,
                    child: CupertinoButton(
                        child: const Icon(CupertinoIcons.ellipsis_vertical),
                        onPressed: () => ()),
                  ),
                ],
              ),
            ),
          ),
          SafeArea(
            child: CupertinoListSection.insetGrouped(
              backgroundColor: CupertinoColors.systemBackground,
              header: const Text('What to expect'),
              children: const [
                Text(
                    'Auch wenn Sie noch keine Erfahrung im Seelengewinnen haben, können Sie gerne als stiller Partner dabei sein und lernen, wie wir evangelisieren. Auf der Seite Seelengewinnen finden Sie weitere Informationen zum Thema Seelengewinnen. Sie können uns auch gerne jederzeit eine E-Mail schreiben, falls Sie weitere Fragen haben: post@bkzw.church.'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';

class HomeTabPage extends StatefulWidget {
  const HomeTabPage({super.key});

  @override
  State<HomeTabPage> createState() => _HomeTabPageState();
}

enum EventStatus { current, upcoming }

class _HomeTabPageState extends State<HomeTabPage> {
  EventStatus _selectedEventStatus = EventStatus.current;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(
          middle: Text('Home'),
        ),
        child: ListView(children: [
          const Text('Events'),
          CupertinoSegmentedControl<EventStatus>(
            // Provide horizontal padding around the children.
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            // This represents a currently selected segmented control.
            groupValue: _selectedEventStatus,
            // Callback that sets the selected segmented control.
            onValueChanged: (EventStatus value) {
              setState(() {
                _selectedEventStatus = value;
              });
            },
            children: const <EventStatus, Widget>{
              EventStatus.current: Text('Current'),
              EventStatus.upcoming: Text('Upcoming'),
            },
          ),
          Center(
              child:
                  Text('Selected event status: ${_selectedEventStatus.name}'))
        ]));
  }
}

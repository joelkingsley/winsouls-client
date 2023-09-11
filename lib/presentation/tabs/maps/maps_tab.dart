import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:winsouls/presentation/tabs/maps/map_detail/map_detail.dart';

class MapsTabPage extends StatefulWidget {
  const MapsTabPage({super.key});

  @override
  State<MapsTabPage> createState() => _MapsTabPageState();
}

class _MapsTabPageState extends State<MapsTabPage> {
  final double _kItemExtent = 32.0;
  final List<String> _organizationNames = <String>[
    'Baptistenkirche Zuverlässiges Wort',
    'Soul Winning India',
  ];
  int _selectedOrganization = 0;

  // This shows a CupertinoModalPopup with a reasonable fixed height which hosts CupertinoPicker.
  void _showDialog(Widget child) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => Container(
        height: 216,
        padding: const EdgeInsets.only(top: 6.0),
        // The Bottom margin is provided to align the popup above the system navigation bar.
        margin: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        // Provide a background color for the popup.
        color: CupertinoColors.systemBackground.resolveFrom(context),
        // Use a SafeArea widget to avoid system overlaps.
        child: SafeArea(
          top: false,
          child: child,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Maps'),
        actions: const [Icon(Icons.qr_code)],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton.extended(
                    // Display a CupertinoPicker with list of fruits.
                    onPressed: () => _showDialog(
                      CupertinoPicker(
                        magnification: 1.22,
                        squeeze: 1.2,
                        useMagnifier: true,
                        itemExtent: _kItemExtent,
                        // This sets the initial item.
                        scrollController: FixedExtentScrollController(
                          initialItem: _selectedOrganization,
                        ),
                        // This is called when selected item is changed.
                        onSelectedItemChanged: (int selectedItem) {
                          setState(() {
                            _selectedOrganization = selectedItem;
                          });
                        },
                        children: List<Widget>.generate(
                            _organizationNames.length, (int index) {
                          return Center(child: Text(_organizationNames[index]));
                        }),
                      ),
                    ),
                    // This displays the selected organization name.
                    label: Text(_organizationNames[_selectedOrganization]),
                    icon: const Icon(CupertinoIcons.arrow_up_arrow_down),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FloatingActionButton.extended(
                      icon: const Icon(Icons.add),
                      label: const Text('Add Map'),
                      onPressed: () => ())
                ],
              ),
            ),
            const Padding(padding: EdgeInsets.only(bottom: 10)),
            Card(
              child: ListTile(
                title: const Text('Pforzheim City'),
                subtitle: const Text('Around the church'),
                trailing: const Text('5 map areas'),
                onTap: () => Navigator.of(context).push(
                  CupertinoPageRoute<void>(
                    builder: (BuildContext context) {
                      return const MapDetailPage(title: 'Pforzheim City');
                    },
                  ),
                ),
              ),
            ),
            Card(
              child: ListTile(
                title: const Text('Magdeburg City'),
                subtitle: const Text('Near the Bahnhof'),
                trailing: const Text('2 map areas'),
                onTap: () => Navigator.of(context).push(
                  CupertinoPageRoute<void>(
                    builder: (BuildContext context) {
                      return const MapDetailPage(title: 'Magdeburg City');
                    },
                  ),
                ),
              ),
            ),
            Card(
              child: ListTile(
                title: const Text('Paderborn University'),
                subtitle: const Text('Near the University'),
                trailing: const Text('3 map areas'),
                onTap: () => Navigator.of(context).push(
                  CupertinoPageRoute<void>(
                    builder: (BuildContext context) {
                      return const MapDetailPage(title: 'Paderborn University');
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
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
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Maps'),
        trailing: Icon(CupertinoIcons.qrcode),
      ),
      child: SafeArea(
        child: ListView(
          children: [
            CupertinoButton(
              padding: EdgeInsets.zero,
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
                  children: List<Widget>.generate(_organizationNames.length,
                      (int index) {
                    return Center(child: Text(_organizationNames[index]));
                  }),
                ),
              ),
              // This displays the selected fruit name.
              child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Switch Organization',
                    ),
                    Padding(padding: EdgeInsets.only(right: 5)),
                    Icon(CupertinoIcons.arrow_up_arrow_down),
                  ]),
            ),
            Center(child: Text(_organizationNames[_selectedOrganization])),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CupertinoButton(
                    child: const Text('Add Map'), onPressed: () => ())
              ],
            ),
            const Padding(padding: EdgeInsets.only(bottom: 10)),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: CupertinoSearchTextField(),
            ),
            CupertinoListSection(
              backgroundColor: CupertinoColors.systemBackground,
              children: <CupertinoListTile>[
                CupertinoListTile.notched(
                  title: const Text('Pforzheim'),
                  subtitle: const Text('Around the church'),
                  additionalInfo: const Text('5 map areas'),
                  trailing: const CupertinoListTileChevron(),
                  onTap: () => Navigator.of(context).push(
                    CupertinoPageRoute<void>(
                      builder: (BuildContext context) {
                        return const MapDetailPage();
                      },
                    ),
                  ),
                ),
                CupertinoListTile.notched(
                  title: const Text('Magdeburg'),
                  subtitle: const Text('Near the Bahnhof'),
                  additionalInfo: const Text('2 map areas'),
                  trailing: const CupertinoListTileChevron(),
                  onTap: () => Navigator.of(context).push(
                    CupertinoPageRoute<void>(
                      builder: (BuildContext context) {
                        return const MapDetailPage();
                      },
                    ),
                  ),
                ),
                CupertinoListTile.notched(
                  title: const Text('Paderborn'),
                  subtitle: const Text('Near the University'),
                  additionalInfo: const Text('3 map areas'),
                  trailing: const CupertinoListTileChevron(),
                  onTap: () => Navigator.of(context).push(
                    CupertinoPageRoute<void>(
                      builder: (BuildContext context) {
                        return const MapDetailPage();
                      },
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

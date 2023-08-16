import 'package:flutter/cupertino.dart';
import 'package:winsouls/presentation/tabs/home/home_tab.dart';
import 'package:winsouls/presentation/tabs/maps/maps_tab.dart';
import 'package:winsouls/presentation/tabs/profile/profile_tab.dart';
import 'package:winsouls/presentation/tabs/stats/stats_tab.dart';

class NavigationTabBar extends StatefulWidget {
  const NavigationTabBar({super.key});

  @override
  State<NavigationTabBar> createState() => _NavigationTabBarState();
}

class _NavigationTabBarState extends State<NavigationTabBar> {
  List<Widget> tabs = [
    const HomeTabPage(),
    const MapsTabPage(),
    const StatsTabPage(),
    const ProfileTabPage()
  ];

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.map_fill),
            label: 'Maps',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.chart_bar_square_fill),
            label: 'Stats',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person_fill),
            label: 'Profile',
          ),
        ],
      ),
      tabBuilder: (BuildContext context, int index) {
        return CupertinoTabView(
          builder: (BuildContext context) {
            return tabs[index];
          },
        );
      },
    );
  }
}

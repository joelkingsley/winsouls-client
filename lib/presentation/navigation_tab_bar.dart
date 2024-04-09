import 'package:flutter/material.dart';
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
  int currentPageIndex = 0;

  List<Widget> tabs = [
    HomeTabPage(),
    const MapsTabPage(),
    const StatsTabPage(),
    const ProfileTabPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.map_outlined),
            selectedIcon: Icon(Icons.map),
            label: 'Maps',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.pie_chart),
            icon: Icon(Icons.pie_chart_outline_outlined),
            label: 'Stats',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.person),
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
        selectedIndex: currentPageIndex,
      ),
      body: tabs[currentPageIndex],
    );
  }
}

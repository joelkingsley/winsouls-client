import 'package:flutter/material.dart';
import 'package:winsouls/presentation/navigation_tab_bar.dart';

void main() {
  runApp(const WinSoulsApp());
}

class WinSoulsApp extends StatelessWidget {
  const WinSoulsApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Win Souls',
      theme: ThemeData(appBarTheme: const AppBarTheme(toolbarHeight: 40)),
      home: const NavigationTabBar(),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:winsouls/presentation/navigation_tab_bar.dart';

void main() {
  runApp(const WinSoulsApp());
}

class WinSoulsApp extends StatelessWidget {
  const WinSoulsApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      title: 'Win Souls',
      theme: CupertinoThemeData(),
      home: NavigationTabBar(),
    );
  }
}

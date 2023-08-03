import 'package:flutter/cupertino.dart';

class HomeTabPage extends StatefulWidget {
  const HomeTabPage({super.key, required this.title});

  final String title;

  @override
  State<HomeTabPage> createState() => _HomeTabPageState();
}

class _HomeTabPageState extends State<HomeTabPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(widget.title),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: CupertinoTheme.of(context).textTheme.textStyle,
            ),
            CupertinoButton(
              onPressed: _incrementCounter,
              child: const Icon(CupertinoIcons.add),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';

class StatsTabPage extends StatefulWidget {
  const StatsTabPage({super.key});

  @override
  State<StatsTabPage> createState() => _StatsTabPageState();
}

class _StatsTabPageState extends State<StatsTabPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Stats'),
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

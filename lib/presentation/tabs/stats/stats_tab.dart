import 'package:flutter/material.dart';

class StatsTabPage extends StatefulWidget {
  const StatsTabPage({super.key});

  @override
  State<StatsTabPage> createState() => _StatsTabPageState();
}

class _StatsTabPageState extends State<StatsTabPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stats'),
        actions: const [Icon(Icons.qr_code)],
      ),
      body: const Center(
        child: Text(
          'Stats page',
        ),
      ),
    );
  }
}

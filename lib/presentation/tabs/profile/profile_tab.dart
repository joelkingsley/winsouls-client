import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileTabPage extends StatefulWidget {
  const ProfileTabPage({super.key});

  @override
  State<ProfileTabPage> createState() => _ProfileTabPageState();
}

class _ProfileTabPageState extends State<ProfileTabPage> {
  void _logoutPressed() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        actions: const [Icon(Icons.qr_code)],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Logged in',
            ),
            CupertinoButton(
              onPressed: _logoutPressed,
              child: const Icon(CupertinoIcons.arrowtriangle_down_square),
            ),
          ],
        ),
      ),
    );
  }
}

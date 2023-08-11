import 'package:flutter/cupertino.dart';

class ProfileTabPage extends StatefulWidget {
  const ProfileTabPage({super.key});

  @override
  State<ProfileTabPage> createState() => _ProfileTabPageState();
}

class _ProfileTabPageState extends State<ProfileTabPage> {
  void _logoutPressed() {}

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Profile'),
        trailing: Icon(CupertinoIcons.qrcode),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Logged in',
            ),
            CupertinoButton(
              onPressed: _logoutPressed,
              child: const Icon(
                  CupertinoIcons.rectangle_arrow_up_right_arrow_down_left),
            ),
          ],
        ),
      ),
    );
  }
}

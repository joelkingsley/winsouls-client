import 'package:flutter/cupertino.dart';

class NotAvailablePage extends StatelessWidget {
  const NotAvailablePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Not Available',
            ),
          ],
        ),
      ),
    );
  }
}

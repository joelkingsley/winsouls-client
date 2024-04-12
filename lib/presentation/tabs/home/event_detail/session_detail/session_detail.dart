import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:winsouls/domain/entities/session.dart';

class SessionDetailPage extends ConsumerWidget {
  final Session session;
  const SessionDetailPage({super.key, required this.session});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Soul Winning Session'),
          actions: const [Icon(Icons.qr_code)],
        ),
        body: FutureBuilder<Session>(builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else {
            final data = snapshot.data;
            if (snapshot.hasData && data != null) {
              return ListView(children: const []);
            } else {
              return ListView();
            }
          }
        }));
  }
}

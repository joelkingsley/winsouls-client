import 'package:winsouls/domain/entities/session_group.dart';

class Session {
  final String id;
  final String name;
  final DateTime scheduledStartTimeInUtc;
  final DateTime scheduledEndTimeInUtc;
  final List<SessionGroup> groups;

  const Session(this.id, this.name, this.scheduledStartTimeInUtc,
      this.scheduledEndTimeInUtc, this.groups);
}

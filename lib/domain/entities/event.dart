import 'package:winsouls/domain/entities/session.dart';

class Event {
  final String id;
  final String title;
  final String coverPhotoUrl;
  final String whatToExpect;
  final String eventPlan;
  final DateTime scheduledStartTimeInUtc;
  final DateTime scheduledEndTimeInUtc;
  final List<Session> sessions;

  const Event(
      this.id,
      this.title,
      this.coverPhotoUrl,
      this.whatToExpect,
      this.eventPlan,
      this.scheduledStartTimeInUtc,
      this.scheduledEndTimeInUtc,
      this.sessions);
}

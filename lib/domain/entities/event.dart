import 'package:winsouls/data/graphql/queries.graphql.dart';
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

  Event.withGetEventDetail(Query$GetEventDetail$Event event)
      : id = event.id,
        title = event.name,
        coverPhotoUrl = event.coverPhotoUrl,
        whatToExpect = event.whatToExpect,
        eventPlan = event.eventPlan,
        scheduledStartTimeInUtc = DateTime.parse(event.scheduledStartTimeInUtc),
        scheduledEndTimeInUtc = DateTime.parse(event.scheduledEndTimeInUtc),
        sessions = event.SoulWinningSessions.map(
            (e) => Session.withEventDetailSoulWinningSession(e)).toList();
}

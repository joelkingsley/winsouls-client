import 'package:winsouls/data/graphql/queries.graphql.dart';
import 'package:winsouls/domain/entities/session.dart';
import 'package:winsouls/domain/entities/session_group.dart';

class Session {
  final String id;
  final String name;
  final DateTime scheduledStartTimeInUtc;
  final DateTime scheduledEndTimeInUtc;
  final List<SessionGroup> groups;

  const Session(this.id, this.name, this.scheduledStartTimeInUtc,
      this.scheduledEndTimeInUtc, this.groups);

  Session.withEventDetailSoulWinningSession(
      Query$GetEventDetail$Event$SoulWinningSessions session)
      : id = session.id,
        name = session.name,
        scheduledStartTimeInUtc =
            DateTime.parse(session.scheduledStartTimeInUtc),
        scheduledEndTimeInUtc = DateTime.parse(session.scheduledEndTimeInUtc),
        groups = session.SoulWinningSessionGroups.map(
                (e) => SessionGroup.withEventDetailSoulWinningSessionGroup(e))
            .toList();
}

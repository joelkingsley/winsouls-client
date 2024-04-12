import 'package:winsouls/data/graphql/queries.graphql.dart';
import 'package:winsouls/domain/entities/encounter.dart';
import 'package:winsouls/domain/entities/map_area.dart';
import 'package:winsouls/domain/entities/user.dart';

class SessionGroup {
  final String id;
  final List<User> members;
  late final MapArea? assignedMapArea;
  final List<Encounter> encounters;

  SessionGroup(this.id, this.members, this.assignedMapArea, this.encounters);

  SessionGroup.withEventDetailSoulWinningSessionGroup(
      Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups
          sessionGroup)
      : id = sessionGroup.id,
        members = sessionGroup.$_SoulWinningSessionGroup_members
            .map((e) =>
                User.withEventDetailSoulWinningSessionGroupMember(e.User))
            .toList(),
        encounters = sessionGroup.Encounters.map((e) =>
                Encounter.withEventDetailSoulWinningSessionGroupEncounter(e))
            .toList() {
    var mapArea = sessionGroup.MapArea;
    assignedMapArea = mapArea != null
        ? MapArea.withEventDetailSoulWinningSessionGroupMapArea(mapArea)
        : null;
  }
}

import 'package:winsouls/domain/entities/encounter.dart';
import 'package:winsouls/domain/entities/map_area.dart';
import 'package:winsouls/domain/entities/user.dart';

class SessionGroup {
  final String id;
  final List<User> members;
  final MapArea assignedMapArea;
  final List<Encounter> encounters;

  SessionGroup(this.id, this.members, this.assignedMapArea, this.encounters);
}

import 'package:winsouls/domain/entities/event.dart';
import 'package:winsouls/domain/entities/organization_type.dart';
import 'package:winsouls/domain/entities/user.dart';

class Organization {
  final String name;
  final List<User> membersInOrganization;
  final List<User> adminsInOrganization;
  final OrganizationType type;
  final List<Event> events;
  final List<Map> maps;

  Organization(this.name, this.membersInOrganization, this.adminsInOrganization,
      this.type, this.events, this.maps);
}

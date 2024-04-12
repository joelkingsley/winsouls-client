import 'package:winsouls/data/graphql/queries.graphql.dart';

class User {
  final String id;
  final String name;
  final String email;

  User(this.id, this.name, this.email);

  User.withEventDetailSoulWinningSessionGroupMember(
      Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$_SoulWinningSessionGroup_members$User
          member)
      : id = member.id,
        name = member.name,
        email = member.email;
}

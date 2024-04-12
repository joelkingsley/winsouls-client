import 'package:winsouls/data/graphql/queries.graphql.dart';

class SavedPerson {
  final String id;
  final String name;
  final String? email;
  final String? phone;

  SavedPerson(this.id, this.name, this.email, this.phone);

  SavedPerson.withEventDetailSoulWinningSessionGroupEncounterSavedPerson(
      Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters$SavedPeople
          savedPeople)
      : id = savedPeople.id,
        name = savedPeople.name,
        email = savedPeople.email,
        phone = savedPeople.phone;
}

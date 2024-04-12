import 'package:winsouls/data/graphql/queries.graphql.dart';
import 'package:winsouls/domain/entities/encounter_result.dart';
import 'package:winsouls/domain/entities/saved_person.dart';

class Encounter {
  final String houseAddress;
  final DateTime encounterTimeInUtc;
  final List<SavedPerson> salvations;
  late final EncounterResult result;

  Encounter(
      this.houseAddress, this.encounterTimeInUtc, this.salvations, this.result);

  Encounter.withEventDetailSoulWinningSessionGroupEncounter(
      Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters
          encounter)
      : houseAddress = encounter.houseAddress,
        encounterTimeInUtc = DateTime.parse(encounter.encounterTimeInUtc),
        salvations = encounter.SavedPeople.map((e) => SavedPerson
                .withEventDetailSoulWinningSessionGroupEncounterSavedPerson(e))
            .toList() {
    switch (encounter.result) {
      case 'listenedToEntireGospel':
        result = EncounterResult.listenedToEntireGospel;
        return;
      case 'listenedToFewVerses':
        result = EncounterResult.listenedToFewVerses;
        return;
      case 'notInterested':
        result = EncounterResult.notInterested;
        return;
      case 'salvation':
        result = EncounterResult.salvation;
        return;
    }
  }
}

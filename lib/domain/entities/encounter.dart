import 'package:winsouls/domain/entities/saved_person.dart';

class Encounter {
  final String houseAddress;
  final String encounterTimeInUtc;
  final List<SavedPerson> salvations;
  final Enum result;

  Encounter(
      this.houseAddress, this.encounterTimeInUtc, this.salvations, this.result);
}

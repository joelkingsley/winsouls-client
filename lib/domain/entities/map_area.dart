import 'package:winsouls/data/graphql/queries.graphql.dart';

class MapArea {
  final String id;
  final String title;
  final String? polygonGeoJson;

  const MapArea(this.id, this.title, this.polygonGeoJson);

  MapArea.withEventDetailSoulWinningSessionGroupMapArea(
      Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$MapArea
          mapArea)
      : id = mapArea.id,
        title = mapArea.name,
        polygonGeoJson = mapArea.polygonGeoJson;
}

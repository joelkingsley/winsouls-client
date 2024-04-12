const String getAllEventsQuery = r'''
query GetAllEvents {
  Event {
    id
    name
    organization
    scheduledEndTimeInUtc
    scheduledStartTimeInUtc
    type
    Organization {
      name
      type
    }
    coverPhotoUrl
    whatToExpect
    eventPlan
  }
}

''';

const String getEventDetailQuery = r'''
query GetEventDetail($eventId: String!) {
  Event(where: {id: {_eq: $eventId}}) {
    id
    name
    organization
    scheduledEndTimeInUtc
    scheduledStartTimeInUtc
    type
    Organization {
      type
      id
      name
    }
    coverPhotoUrl
    whatToExpect
    eventPlan
    SoulWinningSessions {
      id
      name
      scheduledEndTimeInUtc
      scheduledStartTimeInUtc
      SoulWinningSessionGroups_aggregate {
        aggregate {
          count
        }
      }
      SoulWinningSessionGroups {
        id
        session
        _SoulWinningSessionGroup_members {
          User {
            email
            name
            id
          }
        }
        MapArea {
          id
          name
          polygonGeoJson
          Map {
            id
            name
          }
        }
        Encounters_aggregate {
          aggregate {
            count
          }
        }
        Encounters {
          id
          result
          houseAddress
          encounterTimeInUtc
          SavedPeople {
            email
            id
            name
            phone
          }
        }
      }
    }
  }
}

''';

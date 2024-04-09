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

import 'package:winsouls/data/graphql/queries.graphql.dart';
import 'package:winsouls/domain/entities/home_organization.dart';
import 'package:winsouls/domain/entities/organization_type.dart';

class HomeEvent {
  String id;
  String title;
  late HomeOrganization organization;
  String coverPhotoUrl;
  String whatToExpect;
  String eventPlan;
  DateTime scheduledStartTimeInUtc;
  DateTime scheduledEndTimeInUtc;

  HomeEvent(
    this.id,
    this.title,
    this.organization,
    this.coverPhotoUrl,
    this.whatToExpect,
    this.eventPlan,
    this.scheduledStartTimeInUtc,
    this.scheduledEndTimeInUtc,
  );

  HomeEvent.withGetAllEventsEvent(Query$GetAllEvents$Event event)
      : id = event.id,
        title = event.name,
        coverPhotoUrl = event.coverPhotoUrl,
        whatToExpect = event.whatToExpect,
        eventPlan = event.eventPlan,
        scheduledStartTimeInUtc = DateTime.parse(event.scheduledStartTimeInUtc),
        scheduledEndTimeInUtc = DateTime.parse(event.scheduledEndTimeInUtc) {
    if (event.Organization != null) {
      organization = HomeOrganization(
          event.Organization?.name ?? '',
          event.Organization?.name == 'church'
              ? OrganizationType.church
              : OrganizationType.soulWinningClub);
    }
  }
}

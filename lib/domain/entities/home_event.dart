import 'package:winsouls/domain/entities/home_organization.dart';

class HomeEvent {
  final String id;
  final String title;
  final HomeOrganization organization;
  final String coverPhotoUrl;
  final String whatToExpect;
  final String eventPlan;
  final DateTime scheduledStartTimeInUtc;
  final DateTime scheduledEndTimeInUtc;

  const HomeEvent(
    this.id,
    this.title,
    this.organization,
    this.coverPhotoUrl,
    this.whatToExpect,
    this.eventPlan,
    this.scheduledStartTimeInUtc,
    this.scheduledEndTimeInUtc,
  );
}

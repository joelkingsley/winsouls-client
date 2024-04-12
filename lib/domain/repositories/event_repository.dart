import 'package:winsouls/domain/entities/event.dart';
import 'package:winsouls/domain/entities/home_event.dart';

abstract class EventRepository {
  Future<List<HomeEvent>> getAllEvents();
  Future<Event> getEventDetail(String eventId);
}

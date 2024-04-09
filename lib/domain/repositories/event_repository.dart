import 'package:winsouls/domain/entities/home_event.dart';

abstract class EventRepository {
  Future<List<HomeEvent>> getAllEvents();
}

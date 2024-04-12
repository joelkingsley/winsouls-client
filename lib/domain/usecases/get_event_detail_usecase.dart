import 'package:winsouls/domain/entities/event.dart';
import 'package:winsouls/domain/repositories/event_repository.dart';

class GetEventDetailUseCase {
  GetEventDetailUseCase({
    required EventRepository repository,
  }) : _repository = repository;

  final EventRepository _repository;

  Future<Event> execute(String eventId) async {
    return await _repository.getEventDetail(eventId);
  }
}

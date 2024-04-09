import 'package:winsouls/domain/entities/home_event.dart';
import 'package:winsouls/domain/repositories/event_repository.dart';

class GetAllEventsUseCase {
  GetAllEventsUseCase({
    required EventRepository repository,
  }) : _repository = repository;

  final EventRepository _repository;

  Future<List<HomeEvent>> execute() async {
    final list = await _repository.getAllEvents();
    return list;
  }
}

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:winsouls/data/repositories/hasura_event_repository.dart';
import 'package:winsouls/domain/repositories/event_repository.dart';
import 'package:winsouls/domain/usecases/get_all_events_usecase.dart';

final eventRepositoryProvider = Provider<EventRepository>((ref) {
  return HasuraEventRepository();
});

final getAllEventsUseCaseProvider = Provider<GetAllEventsUseCase>((ref) {
  final eventRepository = ref.watch(eventRepositoryProvider);
  return GetAllEventsUseCase(repository: eventRepository);
});

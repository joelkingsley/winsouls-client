import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:winsouls/data/repositories/hasura_event_repository.dart';
import 'package:winsouls/domain/repositories/event_repository.dart';
import 'package:winsouls/domain/usecases/get_event_detail_usecase.dart';

final eventRepositoryProvider = Provider<EventRepository>((ref) {
  return HasuraEventRepository();
});

final getEventDetailUseCaseProvider = Provider<GetEventDetailUseCase>((ref) {
  final eventRepository = ref.watch(eventRepositoryProvider);
  return GetEventDetailUseCase(repository: eventRepository);
});

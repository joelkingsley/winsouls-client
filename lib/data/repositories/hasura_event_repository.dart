import 'package:graphql/client.dart';
import 'package:winsouls/configuration/secret_configs.dart';
import 'package:winsouls/data/graphql/queries.dart';
import 'package:winsouls/data/graphql/queries.graphql.dart';
import 'package:winsouls/domain/entities/event.dart';
import 'package:winsouls/domain/entities/home_event.dart';
import 'package:winsouls/domain/repositories/event_repository.dart';

class HasuraEventRepository implements EventRepository {
  static GraphQLClient getGraphQLClient() {
    final Link link = HttpLink(
      'https://winsouls-prod.hasura.app/v1/graphql',
      defaultHeaders: {
        'x-hasura-admin-secret': SecretConfigs.hasuraAdminSecretKey,
      },
    );

    return GraphQLClient(
      cache: GraphQLCache(),
      link: link,
    );
  }

  @override
  Future<List<HomeEvent>> getAllEvents() async {
    final GraphQLClient client = HasuraEventRepository.getGraphQLClient();
    final QueryOptions options = QueryOptions(document: gql(getAllEventsQuery));
    final QueryResult result = await client.query(options);
    final Map<String, dynamic>? data = result.data;
    if (data != null) {
      final parsedData = Query$GetAllEvents.fromJson(data);
      return parsedData.Event.map((e) => HomeEvent.withGetAllEventsEvent(e))
          .toList();
    } else {
      throw Exception();
    }
  }

  @override
  Future<Event> getEventDetail(String eventId) async {
    final GraphQLClient client = HasuraEventRepository.getGraphQLClient();
    final QueryOptions options = QueryOptions(
        document: gql(getEventDetailQuery), variables: {'eventId': eventId});
    final QueryResult result = await client.query(options);

    final Map<String, dynamic>? data = result.data;
    if (data != null) {
      final parsedData = Query$GetEventDetail.fromJson(data);
      return parsedData.Event.map((e) => Event.withGetEventDetail(e))
          .toList()
          .first;
    } else {
      throw Exception();
    }
  }
}

import 'package:flutter/foundation.dart';
import 'package:graphql/client.dart';
import 'package:winsouls/configuration/configs.dart';

class GraphQLService {
  static const _graphQLUrl = Configs.hasuraGraphQLApiUrl;
  static final HttpLink httpLink = HttpLink(
    _graphQLUrl,
  );
  static ValueNotifier<GraphQLClient> initailizeClient(String token) {
    final AuthLink authLink = AuthLink(getToken: () => token);
    final WebSocketLink websocketLink = WebSocketLink(
      _graphQLUrl,
      config: SocketClientConfig(
        autoReconnect: true,
        inactivityTimeout: const Duration(seconds: 30),
        initialPayload: () async {
          return {
            'headers': {'Authorization': token},
          };
        },
      ),
    );
    final Link link = authLink.concat(httpLink).concat(websocketLink);
    ValueNotifier<GraphQLClient> client = ValueNotifier(
      GraphQLClient(
        cache: GraphQLCache(),
        link: link,
      ),
    );
    return client;
  }
}

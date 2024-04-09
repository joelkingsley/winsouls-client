# winsouls

An app for churches and soul winning clubs to create, manage, and track soul winning events.

## Setting up the project

/// To run the project, create a file `lib/configuration/secret_configs.dart` with the content:
/// ```dart
/// const String HASURA_GRAPHQL_ADMIN_KEY =
///    '<HASURA_GRAPHQL_ADMIN_KEY>';
/// ```
/// Replace the values with the corresponding actual secrets

## Downloading the new GraphQL schema and regenerating dart code
/// Run the following command in the terminal:
/// ```bash
/// cd lib/data/graphql &&
/// gq https://winsouls-prod.hasura.app/v1/graphql -H 'X-Hasura-Access-Key: secretaccesskey' --introspect > schema.graphql &&
/// cd ../../.. &&
/// dart run build_runner build
/// ```
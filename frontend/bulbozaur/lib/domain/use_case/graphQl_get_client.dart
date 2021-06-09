import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:graphql/client.dart';

GraphQLClient getClient() {
  final HttpLink httpLink = HttpLink(
    "http://10.0.2.2:8000/graphql/",
  );

  return GraphQLClient(link: httpLink, cache: GraphQLCache());
}

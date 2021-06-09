import 'dart:core';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:project_skeleton/domain/entities/buildings_entities/buildings_entity.dart';
import 'package:project_skeleton/domain/use_case/graphQl_get_client.dart';

import 'package:project_skeleton/domain/use_case/core/usecase.dart';

@Injectable()
class GetTheHouses extends UseCase<List<BuildingsEntity>, void> {
  static const String getHouses = r"""
query Buildings($token:String!)
{
buildings(token:$token){
  id
  name
}
}
 """;

  @override
  Future<Either<Failure, List<BuildingsEntity>>> call([noparams]) async {
    final storage = new FlutterSecureStorage();
    String? token = await storage.read(key: "token");
    final QueryOptions options = QueryOptions(
      document: gql(getHouses),
      variables: <String, dynamic>{'token': token},
    );
    final client = getClient();
    final QueryResult result = await client.query(options);
    if (result.hasException) {
      print(result.exception);
      return Left(Failure.invalidParameter());
    } else {
      final path = ((result.data!['buildings']));
      print(path);
      // final source = json.decode(path.first);

      List<BuildingsEntity> buildings = List<BuildingsEntity>.from(
          (path).map((e) => BuildingsEntity.fromJson(e))).toList();
      return Right(buildings);
    }
  }
}
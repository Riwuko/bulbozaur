import 'dart:core';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:project_skeleton/domain/entities/devices_entities/devices_entity.dart';
import 'package:project_skeleton/domain/use_case/graphQl_get_client.dart';

import 'package:project_skeleton/domain/use_case/core/usecase.dart';

@Injectable()
class GetAllAboutHouse extends UseCase<List<DeviceEntity>, int> {
  static const String getDevices = r"""
query actuatingDevices($token:String!,$id:Int!)
{
actuatingDevices(building_Id:$id,token:$token){
  id
  name
  state
  stateValue
}
}
 """;

  @override
  Future<Either<Failure, List<DeviceEntity>>> call(int id) async {
    print(id);
    final storage = new FlutterSecureStorage();
    String? token = await storage.read(key: "token");
    final QueryOptions options = QueryOptions(
      document: gql(getDevices),
      variables: <String, dynamic>{'token': token, 'id': id},
    );
    final client = getClient();
    final QueryResult result = await client.query(options);

    if (result.hasException) {
      print(result.exception.toString());

      return Left(Failure.invalidParameter());
    } else {
      print(result.data.toString());
      final path = ((result.data!['actuatingDevices']));
      print(path);

      List<DeviceEntity> buildings =
          List<DeviceEntity>.from((path).map((e) => DeviceEntity.fromJson(e)))
              .toList();
      print(buildings);
      return Right(buildings);
    }
  }
}

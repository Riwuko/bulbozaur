import 'dart:core';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:project_skeleton/domain/entities/buildings_entities/buildings_entity.dart';
import 'package:project_skeleton/domain/use_case/graphQl_get_client.dart';

import 'package:project_skeleton/domain/use_case/core/usecase.dart';

@Injectable()
class GetAllAboutHouse extends UseCase<void, void> {
  static const String getDevices = r"""
query devices($token:String!,$id:Int!)
{
devices(building_Id:$id,token:$token){
...on ActuatingDeviceType{
  id
  name
}
...on MeasuringDeviceType{
  id
  name
  lastMeasurement{
    measureDate
    measureValue
  }
}
}
}
 """;

  @override
  Future<Either<Failure, void>> call([noparams]) async {
    int id = 1;
    final storage = new FlutterSecureStorage();
    String? token = await storage.read(key: "token");
    final QueryOptions options = QueryOptions(
      document: gql(getDevices),
      variables: <String, dynamic>{'token': token, 'id': id},
    );
    final client = getClient();
    final QueryResult result = await client.query(options);
    print("dog");
    if (result.hasException) {
      print(result.exception.toString());
      return Left(Failure.invalidParameter());
    } else {
      print(result.data.toString());
      //  final path = ((result.data!['buildings']));
//print(path);
      // final source = json.decode(path.first);

      //     List<BuildingsEntity> buildings = List<BuildingsEntity>.from(
      //         (path).map((e) => BuildingsEntity.fromJson(e))).toList();
      //     return Right(buildings);
    }
    return Right(true);
  }
}

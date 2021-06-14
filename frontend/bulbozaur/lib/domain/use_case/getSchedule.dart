import 'dart:core';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:project_skeleton/domain/entities/schedule_entites/schedule_entity.dart';
import 'package:project_skeleton/domain/use_case/graphQl_get_client.dart';

import 'package:project_skeleton/domain/use_case/core/usecase.dart';

@Injectable()
class GetSchedule extends UseCase<List<ScheduleEntity>, int> {
  static const String getDevices = r"""
query schedules($token:String!,$id:Int!)
{
schedules(building_Id:$id,token:$token){
  id
  name
  icon
  building{
    id
    name
  }
  scheduleDevicesStates{
    device{
      id
      name
    }
    state
    stateValue
  }
  
}
}
 """;

  @override
  Future<Either<Failure, List<ScheduleEntity>>> call(int id) async {
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
      final path = ((result.data!['schedules']));
      print(path);
      // return Right(true);

      List<ScheduleEntity> schedule = List<ScheduleEntity>.from(
          (path).map((e) => ScheduleEntity.fromJson(e))).toList();
      print(schedule);

      return Right(schedule);
    }
  }
}

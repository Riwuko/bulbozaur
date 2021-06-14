import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:project_skeleton/domain/use_case/graphQl_get_client.dart';

import 'package:project_skeleton/domain/use_case/core/usecase.dart';
import 'package:project_skeleton/presentation/create_schedule/cubit/create_schedule_cubit.dart';

@Injectable()
class CreateSchedule implements UseCase<bool, Params> {
  static const String getLogin = r"""
mutation Mutacja ($icon:Int!,$name: String!,$buildingId: ID!,$timeFrom:Time!,$timeTo:Time!,$devicesStates:[ScheduleDeviceStateInput!]!
,$token:String!){
  createSchedule(name:$name,buildingId:$buildingId,timeFrom:$timeFrom,timeTo:$timeTo,token:$token,devicesStates:$devicesStates,icon:$icon){
    schedule{
      name
    }
  }
}
 """;

  @override
  Future<Either<Failure, bool>> call(Params params) async {
    final storage = new FlutterSecureStorage();
    String? token = await storage.read(key: "token");
    final val = params.devices.map((e) => e.toJson()).toList();
    print(val);
    final QueryOptions options = QueryOptions(
      document: gql(getLogin),
      variables: <String, dynamic>{
        'icon': params.idIcon,
        'token': token,
        'name': params.name,
        'buildingId': params.buildingId,
        'timeFrom': params.from,
        'timeTo': params.to,
        'devicesStates': params.devices.map((e) => e.toJson()).toList()
      },
    );
    final client = getClient();
    final QueryResult result = await client.query(options);
    if (result.hasException) {
      print(result.exception);
      return Left(Failure.invalidParameter());
    } else {
      print(result.data);

      return Right(true);
    }
  }
}

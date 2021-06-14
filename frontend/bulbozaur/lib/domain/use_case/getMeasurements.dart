import 'dart:core';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:project_skeleton/domain/entities/measurement_entity.dart';
import 'package:project_skeleton/domain/entities/schedule_entites/schedule_entity.dart';
import 'package:project_skeleton/domain/use_case/graphQl_get_client.dart';

import 'package:project_skeleton/domain/use_case/core/usecase.dart';
import 'package:project_skeleton/presentation/single_home/cubit/single_home_cubit.dart';

@Injectable()
class GetMeasurements extends UseCase<List<MeasurementEntity>, Param> {
  static const String getDevices = r"""
query measurements($term:Term!,$buildingId:Term!,$fromTime:Date!,$toTime:Date)
{
measurements(

  filter:{
      measureParameter:{
    term:$term
  }
  measureDate:{
    range:{
      lower:{date:$fromTime},
      upper:{date:$toTime}
    }
  }
  device:{
    building:{
      id:{
        term:$buildingId
      }
    }
  }}
){
  edges{
    node{
      measureDate
      measureParameter
      measureValue
    }
  }
 
  
}
}
 """;

  @override
  Future<Either<Failure, List<MeasurementEntity>>> call(
      Param parameteres) async {
    final QueryOptions options = QueryOptions(
      document: gql(getDevices),
      variables: <String, dynamic>{
        'term': parameteres.term,
        'buildingId': parameteres.buildingId.toString(),
        'fromTime': parameteres.fromTime,
        'toTime': parameteres.toTime
      },
    );
    final client = getClient();
    final QueryResult result = await client.query(options);

    if (result.hasException) {
      print(result.exception.toString());

      return Left(Failure.invalidParameter());
    } else {
      print(result.data.toString());
      final path = ((result.data!['measurements']['edges']));
      print(path);

      List<MeasurementEntity> measurment = List<MeasurementEntity>.from(
          (path).map((e) => MeasurementEntity.fromJson(e['node']))).toList();
      print(measurment);

      return Right(measurment);
    }
  }
}

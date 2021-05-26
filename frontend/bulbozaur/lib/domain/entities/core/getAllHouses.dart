import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:project_skeleton/domain/entities/core/graphQl_get_client.dart';

import 'package:project_skeleton/domain/use_case/core/usecase.dart';

@Injectable()
class GetTheHouses extends UseCase<bool, void> {
  static const String getHouses = r"""
query Buildings($token:String!)
{
buildings(token:$token){
  id
  name
  buildingMeasuringDevices{
  measuringDeviceDevices{
    id
    name
  }}
}
}
 """;

  @override
  Future<Either<Failure, bool>> call([noparams]) async {
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
      print(result.data);
      return Right(true);
    }
  }
}

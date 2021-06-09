import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:project_skeleton/domain/use_case/graphQl_get_client.dart';

import 'package:project_skeleton/domain/use_case/core/usecase.dart';

@Injectable()
class CheckIfLoginIsGood implements UseCases<bool, String, String> {
  static const String getLogin = r"""
mutation TokenAuth($email: String!,$password: String!){
  tokenAuth(email:$email,password:$password){
    token
    payload
    refreshExpiresIn
  }
}

 """;

  @override
  Future<Either<Failure, bool>> call(String email, String password) async {
    final storage = new FlutterSecureStorage();
    final QueryOptions options = QueryOptions(
      document: gql(getLogin),
      variables: <String, dynamic>{'email': email, 'password': password},
    );
    final client = getClient();
    final QueryResult result = await client.query(options);
    if (result.hasException) {
      print(result.exception);
      return Left(Failure.invalidParameter());
    } else {
      print(result.data);
      String token = result.data!['tokenAuth']['token'];
      await storage.write(key: "token", value: token);

      return Right(true);
    }
  }
}

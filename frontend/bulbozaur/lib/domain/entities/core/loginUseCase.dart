import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:project_skeleton/core/logger/logger.dart';
import 'package:project_skeleton/domain/use_case/core/usecase.dart';

@Injectable()
class CheckIfLoginIsGood implements UseCases<bool, String, String> {
  Future<http.Response> checkLog(String email, String password) async =>
      await http.post(new Uri.http("10.0.2.2:8000", "/api/auth/jwt/create/"),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
          body: jsonEncode({"email": email, "password": password}));

  @override
  Future<Either<Failure, bool>> call(String email, String password) async {
    var response = await checkLog(email, password);
    AppLogger.public(response.body);
    if (response.statusCode == 200) {
      AppLogger.config("The data is correct");
      return Right(true);
    } else if (response.statusCode == 401) {
      AppLogger.config("The data is incorrect");
      return Right(false);
    } else {
      return Left(Failure());
    }
  }
}

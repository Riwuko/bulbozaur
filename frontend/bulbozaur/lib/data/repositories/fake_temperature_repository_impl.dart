import 'package:injectable/injectable.dart';

import '../../core/errors/failure.dart';
import '../remote_data_source/fake_temperature_local_data_source_impl.dart';

abstract class FakeTemperatureRepository {
  Future<Either<Failure, int>> getTemperature();
}

@Injectable(as: FakeTemperatureRepository)
class FakeTemperatureRepositoryImpl implements FakeTemperatureRepository {
  final FakeTemperatureRemoteDataSource _fakeTemperatureDataSource;

  FakeTemperatureRepositoryImpl(this._fakeTemperatureDataSource);

  @override
  Future<Either<Failure, int>> getTemperature() async {
    final result = await _fakeTemperatureDataSource.getTemperature();

    if (result == null) {
      return Left(Failure.remoteSourceFailure());
    } else {
      return Right(result);
    }
  }
}


import 'package:injectable/injectable.dart';

import '../../../core/errors/failure.dart';
import '../../../data/repositories/fake_temperature_repository_impl.dart';
import '../core/usecase.dart';

@Injectable()
class FetchTemperatureUseCase implements UseCase<int, void> {
  final FakeTemperatureRepository _repository;

  FetchTemperatureUseCase(this._repository);

  @override
  Future<Either<Failure, int>> call([void noParam]) => _repository.getTemperature();
}

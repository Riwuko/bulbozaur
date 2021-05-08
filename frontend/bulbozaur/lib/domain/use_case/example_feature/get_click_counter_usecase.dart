import 'package:injectable/injectable.dart';

import '../../../core/errors/failure.dart';
import '../../../data/repositories/click_counter_repository_impl.dart';
import '../../entities/example_feature/click_counter_entity.dart';
import '../core/usecase.dart';

@Injectable()
class GetClickCounterUseCase implements UseCase<ClickCounterEntity, void> {
  final ClickCounterRepository _repository;

  GetClickCounterUseCase(this._repository);

  @override
  Future<Either<Failure, ClickCounterEntity>> call([void param]) async => (await _repository.getClickCounter()).fold(
        (failure) => Left(failure),
        (dto) => Right(ClickCounterEntity.fromDto(dto)),
      );
}

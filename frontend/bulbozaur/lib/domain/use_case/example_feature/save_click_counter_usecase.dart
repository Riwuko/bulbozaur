
import 'package:injectable/injectable.dart';

import '../../../core/errors/failure.dart';
import '../../../data/model/click_counter_model/click_counter_model.dart';
import '../../../data/repositories/click_counter_repository_impl.dart';
import '../../entities/example_feature/click_counter_entity.dart';
import '../core/usecase.dart';

@Injectable()
class SaveClickCounterUseCase implements UseCase<void, ClickCounterEntity> {
  final ClickCounterRepository _repository;

  SaveClickCounterUseCase(this._repository);

  @override
  Future<Either<Failure, void>> call(ClickCounterEntity value) async =>
      _repository.saveClickCounter(ClickCounterModel(count: value.count)).then((value) => Right(dynamic));
}

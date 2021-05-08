import 'package:injectable/injectable.dart';

import '../../core/errors/failure.dart';
import '../local_data_source/click_counter_local_data_source_impl.dart';
import '../model/click_counter_model/click_counter_model.dart';



abstract class ClickCounterRepository {
  Future<Either<Failure, ClickCounterModel>> getClickCounter();

  Future<Either<Failure, void>> saveClickCounter(ClickCounterModel value);
}


@Injectable(as: ClickCounterRepository)
class ClickCounterRepositoryImpl implements ClickCounterRepository {
  final ClickCounterLocalDataSource _clickCounterLocalDataSource;

  ClickCounterRepositoryImpl(this._clickCounterLocalDataSource);

  @override
  Future<Either<Failure, ClickCounterModel>> getClickCounter() async{
    final result = await _clickCounterLocalDataSource.getClickCounter();
    if(result == null) return Left(Failure.instanceDoesNotExist());
    return Right(result);
  }

  @override
  Future<Either<Failure, void>> saveClickCounter(ClickCounterModel value) async {
    try{
      return Right(await _clickCounterLocalDataSource.saveClickCounter(value));
    } catch (_){
      return Left(Failure.databaseClientFailure());
    }
  }
}

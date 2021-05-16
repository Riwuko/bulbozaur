import '../../../core/errors/failure.dart';

export '../../../core/errors/failure.dart';

abstract class UseCase<T, S> {
  Future<Either<Failure, T>> call(S param);
}

abstract class UseCases<T, S, P> {
  Future<Either<Failure, T>> call(S parm1, P param2);
}

abstract class RightUseCase<T, S> {
  Future<T> call(S param);
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'exception.freezed.dart';

@freezed
class Exception with _$Exception {
  const factory Exception({String? message}) = _Exception;

  const factory Exception.databaseClientFailure() = DatabaseClientException;
  const factory Exception.instanceAlreadyExist() = InstanceAlreadyExistException;
  const factory Exception.instanceDoesNotExist() = InstanceDoesNotExistExpception;
  const factory Exception.invalidParameter() = InvalidParameterException;
  const factory Exception.remoteSourceException() = RemoteSourceException;
}

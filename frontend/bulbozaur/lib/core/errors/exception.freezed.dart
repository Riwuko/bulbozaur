// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ExceptionTearOff {
  const _$ExceptionTearOff();

  _Exception call({String? message}) {
    return _Exception(
      message: message,
    );
  }

  DatabaseClientException databaseClientFailure() {
    return const DatabaseClientException();
  }

  InstanceAlreadyExistException instanceAlreadyExist() {
    return const InstanceAlreadyExistException();
  }

  InstanceDoesNotExistExpception instanceDoesNotExist() {
    return const InstanceDoesNotExistExpception();
  }

  InvalidParameterException invalidParameter() {
    return const InvalidParameterException();
  }

  RemoteSourceException remoteSourceException() {
    return const RemoteSourceException();
  }
}

/// @nodoc
const $Exception = _$ExceptionTearOff();

/// @nodoc
mixin _$Exception {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? message) $default, {
    required TResult Function() databaseClientFailure,
    required TResult Function() instanceAlreadyExist,
    required TResult Function() instanceDoesNotExist,
    required TResult Function() invalidParameter,
    required TResult Function() remoteSourceException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? message)? $default, {
    TResult Function()? databaseClientFailure,
    TResult Function()? instanceAlreadyExist,
    TResult Function()? instanceDoesNotExist,
    TResult Function()? invalidParameter,
    TResult Function()? remoteSourceException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Exception value) $default, {
    required TResult Function(DatabaseClientException value)
        databaseClientFailure,
    required TResult Function(InstanceAlreadyExistException value)
        instanceAlreadyExist,
    required TResult Function(InstanceDoesNotExistExpception value)
        instanceDoesNotExist,
    required TResult Function(InvalidParameterException value) invalidParameter,
    required TResult Function(RemoteSourceException value)
        remoteSourceException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Exception value)? $default, {
    TResult Function(DatabaseClientException value)? databaseClientFailure,
    TResult Function(InstanceAlreadyExistException value)? instanceAlreadyExist,
    TResult Function(InstanceDoesNotExistExpception value)?
        instanceDoesNotExist,
    TResult Function(InvalidParameterException value)? invalidParameter,
    TResult Function(RemoteSourceException value)? remoteSourceException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExceptionCopyWith<$Res> {
  factory $ExceptionCopyWith(Exception value, $Res Function(Exception) then) =
      _$ExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class _$ExceptionCopyWithImpl<$Res> implements $ExceptionCopyWith<$Res> {
  _$ExceptionCopyWithImpl(this._value, this._then);

  final Exception _value;
  // ignore: unused_field
  final $Res Function(Exception) _then;
}

/// @nodoc
abstract class _$ExceptionCopyWith<$Res> {
  factory _$ExceptionCopyWith(
          _Exception value, $Res Function(_Exception) then) =
      __$ExceptionCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class __$ExceptionCopyWithImpl<$Res> extends _$ExceptionCopyWithImpl<$Res>
    implements _$ExceptionCopyWith<$Res> {
  __$ExceptionCopyWithImpl(_Exception _value, $Res Function(_Exception) _then)
      : super(_value, (v) => _then(v as _Exception));

  @override
  _Exception get _value => super._value as _Exception;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_Exception(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Exception implements _Exception {
  const _$_Exception({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'Exception(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Exception &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$ExceptionCopyWith<_Exception> get copyWith =>
      __$ExceptionCopyWithImpl<_Exception>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? message) $default, {
    required TResult Function() databaseClientFailure,
    required TResult Function() instanceAlreadyExist,
    required TResult Function() instanceDoesNotExist,
    required TResult Function() invalidParameter,
    required TResult Function() remoteSourceException,
  }) {
    return $default(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? message)? $default, {
    TResult Function()? databaseClientFailure,
    TResult Function()? instanceAlreadyExist,
    TResult Function()? instanceDoesNotExist,
    TResult Function()? invalidParameter,
    TResult Function()? remoteSourceException,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Exception value) $default, {
    required TResult Function(DatabaseClientException value)
        databaseClientFailure,
    required TResult Function(InstanceAlreadyExistException value)
        instanceAlreadyExist,
    required TResult Function(InstanceDoesNotExistExpception value)
        instanceDoesNotExist,
    required TResult Function(InvalidParameterException value) invalidParameter,
    required TResult Function(RemoteSourceException value)
        remoteSourceException,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Exception value)? $default, {
    TResult Function(DatabaseClientException value)? databaseClientFailure,
    TResult Function(InstanceAlreadyExistException value)? instanceAlreadyExist,
    TResult Function(InstanceDoesNotExistExpception value)?
        instanceDoesNotExist,
    TResult Function(InvalidParameterException value)? invalidParameter,
    TResult Function(RemoteSourceException value)? remoteSourceException,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _Exception implements Exception {
  const factory _Exception({String? message}) = _$_Exception;

  String? get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ExceptionCopyWith<_Exception> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatabaseClientExceptionCopyWith<$Res> {
  factory $DatabaseClientExceptionCopyWith(DatabaseClientException value,
          $Res Function(DatabaseClientException) then) =
      _$DatabaseClientExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class _$DatabaseClientExceptionCopyWithImpl<$Res>
    extends _$ExceptionCopyWithImpl<$Res>
    implements $DatabaseClientExceptionCopyWith<$Res> {
  _$DatabaseClientExceptionCopyWithImpl(DatabaseClientException _value,
      $Res Function(DatabaseClientException) _then)
      : super(_value, (v) => _then(v as DatabaseClientException));

  @override
  DatabaseClientException get _value => super._value as DatabaseClientException;
}

/// @nodoc

class _$DatabaseClientException implements DatabaseClientException {
  const _$DatabaseClientException();

  @override
  String toString() {
    return 'Exception.databaseClientFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DatabaseClientException);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? message) $default, {
    required TResult Function() databaseClientFailure,
    required TResult Function() instanceAlreadyExist,
    required TResult Function() instanceDoesNotExist,
    required TResult Function() invalidParameter,
    required TResult Function() remoteSourceException,
  }) {
    return databaseClientFailure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? message)? $default, {
    TResult Function()? databaseClientFailure,
    TResult Function()? instanceAlreadyExist,
    TResult Function()? instanceDoesNotExist,
    TResult Function()? invalidParameter,
    TResult Function()? remoteSourceException,
    required TResult orElse(),
  }) {
    if (databaseClientFailure != null) {
      return databaseClientFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Exception value) $default, {
    required TResult Function(DatabaseClientException value)
        databaseClientFailure,
    required TResult Function(InstanceAlreadyExistException value)
        instanceAlreadyExist,
    required TResult Function(InstanceDoesNotExistExpception value)
        instanceDoesNotExist,
    required TResult Function(InvalidParameterException value) invalidParameter,
    required TResult Function(RemoteSourceException value)
        remoteSourceException,
  }) {
    return databaseClientFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Exception value)? $default, {
    TResult Function(DatabaseClientException value)? databaseClientFailure,
    TResult Function(InstanceAlreadyExistException value)? instanceAlreadyExist,
    TResult Function(InstanceDoesNotExistExpception value)?
        instanceDoesNotExist,
    TResult Function(InvalidParameterException value)? invalidParameter,
    TResult Function(RemoteSourceException value)? remoteSourceException,
    required TResult orElse(),
  }) {
    if (databaseClientFailure != null) {
      return databaseClientFailure(this);
    }
    return orElse();
  }
}

abstract class DatabaseClientException implements Exception {
  const factory DatabaseClientException() = _$DatabaseClientException;
}

/// @nodoc
abstract class $InstanceAlreadyExistExceptionCopyWith<$Res> {
  factory $InstanceAlreadyExistExceptionCopyWith(
          InstanceAlreadyExistException value,
          $Res Function(InstanceAlreadyExistException) then) =
      _$InstanceAlreadyExistExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class _$InstanceAlreadyExistExceptionCopyWithImpl<$Res>
    extends _$ExceptionCopyWithImpl<$Res>
    implements $InstanceAlreadyExistExceptionCopyWith<$Res> {
  _$InstanceAlreadyExistExceptionCopyWithImpl(
      InstanceAlreadyExistException _value,
      $Res Function(InstanceAlreadyExistException) _then)
      : super(_value, (v) => _then(v as InstanceAlreadyExistException));

  @override
  InstanceAlreadyExistException get _value =>
      super._value as InstanceAlreadyExistException;
}

/// @nodoc

class _$InstanceAlreadyExistException implements InstanceAlreadyExistException {
  const _$InstanceAlreadyExistException();

  @override
  String toString() {
    return 'Exception.instanceAlreadyExist()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InstanceAlreadyExistException);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? message) $default, {
    required TResult Function() databaseClientFailure,
    required TResult Function() instanceAlreadyExist,
    required TResult Function() instanceDoesNotExist,
    required TResult Function() invalidParameter,
    required TResult Function() remoteSourceException,
  }) {
    return instanceAlreadyExist();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? message)? $default, {
    TResult Function()? databaseClientFailure,
    TResult Function()? instanceAlreadyExist,
    TResult Function()? instanceDoesNotExist,
    TResult Function()? invalidParameter,
    TResult Function()? remoteSourceException,
    required TResult orElse(),
  }) {
    if (instanceAlreadyExist != null) {
      return instanceAlreadyExist();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Exception value) $default, {
    required TResult Function(DatabaseClientException value)
        databaseClientFailure,
    required TResult Function(InstanceAlreadyExistException value)
        instanceAlreadyExist,
    required TResult Function(InstanceDoesNotExistExpception value)
        instanceDoesNotExist,
    required TResult Function(InvalidParameterException value) invalidParameter,
    required TResult Function(RemoteSourceException value)
        remoteSourceException,
  }) {
    return instanceAlreadyExist(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Exception value)? $default, {
    TResult Function(DatabaseClientException value)? databaseClientFailure,
    TResult Function(InstanceAlreadyExistException value)? instanceAlreadyExist,
    TResult Function(InstanceDoesNotExistExpception value)?
        instanceDoesNotExist,
    TResult Function(InvalidParameterException value)? invalidParameter,
    TResult Function(RemoteSourceException value)? remoteSourceException,
    required TResult orElse(),
  }) {
    if (instanceAlreadyExist != null) {
      return instanceAlreadyExist(this);
    }
    return orElse();
  }
}

abstract class InstanceAlreadyExistException implements Exception {
  const factory InstanceAlreadyExistException() =
      _$InstanceAlreadyExistException;
}

/// @nodoc
abstract class $InstanceDoesNotExistExpceptionCopyWith<$Res> {
  factory $InstanceDoesNotExistExpceptionCopyWith(
          InstanceDoesNotExistExpception value,
          $Res Function(InstanceDoesNotExistExpception) then) =
      _$InstanceDoesNotExistExpceptionCopyWithImpl<$Res>;
}

/// @nodoc
class _$InstanceDoesNotExistExpceptionCopyWithImpl<$Res>
    extends _$ExceptionCopyWithImpl<$Res>
    implements $InstanceDoesNotExistExpceptionCopyWith<$Res> {
  _$InstanceDoesNotExistExpceptionCopyWithImpl(
      InstanceDoesNotExistExpception _value,
      $Res Function(InstanceDoesNotExistExpception) _then)
      : super(_value, (v) => _then(v as InstanceDoesNotExistExpception));

  @override
  InstanceDoesNotExistExpception get _value =>
      super._value as InstanceDoesNotExistExpception;
}

/// @nodoc

class _$InstanceDoesNotExistExpception
    implements InstanceDoesNotExistExpception {
  const _$InstanceDoesNotExistExpception();

  @override
  String toString() {
    return 'Exception.instanceDoesNotExist()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InstanceDoesNotExistExpception);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? message) $default, {
    required TResult Function() databaseClientFailure,
    required TResult Function() instanceAlreadyExist,
    required TResult Function() instanceDoesNotExist,
    required TResult Function() invalidParameter,
    required TResult Function() remoteSourceException,
  }) {
    return instanceDoesNotExist();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? message)? $default, {
    TResult Function()? databaseClientFailure,
    TResult Function()? instanceAlreadyExist,
    TResult Function()? instanceDoesNotExist,
    TResult Function()? invalidParameter,
    TResult Function()? remoteSourceException,
    required TResult orElse(),
  }) {
    if (instanceDoesNotExist != null) {
      return instanceDoesNotExist();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Exception value) $default, {
    required TResult Function(DatabaseClientException value)
        databaseClientFailure,
    required TResult Function(InstanceAlreadyExistException value)
        instanceAlreadyExist,
    required TResult Function(InstanceDoesNotExistExpception value)
        instanceDoesNotExist,
    required TResult Function(InvalidParameterException value) invalidParameter,
    required TResult Function(RemoteSourceException value)
        remoteSourceException,
  }) {
    return instanceDoesNotExist(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Exception value)? $default, {
    TResult Function(DatabaseClientException value)? databaseClientFailure,
    TResult Function(InstanceAlreadyExistException value)? instanceAlreadyExist,
    TResult Function(InstanceDoesNotExistExpception value)?
        instanceDoesNotExist,
    TResult Function(InvalidParameterException value)? invalidParameter,
    TResult Function(RemoteSourceException value)? remoteSourceException,
    required TResult orElse(),
  }) {
    if (instanceDoesNotExist != null) {
      return instanceDoesNotExist(this);
    }
    return orElse();
  }
}

abstract class InstanceDoesNotExistExpception implements Exception {
  const factory InstanceDoesNotExistExpception() =
      _$InstanceDoesNotExistExpception;
}

/// @nodoc
abstract class $InvalidParameterExceptionCopyWith<$Res> {
  factory $InvalidParameterExceptionCopyWith(InvalidParameterException value,
          $Res Function(InvalidParameterException) then) =
      _$InvalidParameterExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class _$InvalidParameterExceptionCopyWithImpl<$Res>
    extends _$ExceptionCopyWithImpl<$Res>
    implements $InvalidParameterExceptionCopyWith<$Res> {
  _$InvalidParameterExceptionCopyWithImpl(InvalidParameterException _value,
      $Res Function(InvalidParameterException) _then)
      : super(_value, (v) => _then(v as InvalidParameterException));

  @override
  InvalidParameterException get _value =>
      super._value as InvalidParameterException;
}

/// @nodoc

class _$InvalidParameterException implements InvalidParameterException {
  const _$InvalidParameterException();

  @override
  String toString() {
    return 'Exception.invalidParameter()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InvalidParameterException);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? message) $default, {
    required TResult Function() databaseClientFailure,
    required TResult Function() instanceAlreadyExist,
    required TResult Function() instanceDoesNotExist,
    required TResult Function() invalidParameter,
    required TResult Function() remoteSourceException,
  }) {
    return invalidParameter();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? message)? $default, {
    TResult Function()? databaseClientFailure,
    TResult Function()? instanceAlreadyExist,
    TResult Function()? instanceDoesNotExist,
    TResult Function()? invalidParameter,
    TResult Function()? remoteSourceException,
    required TResult orElse(),
  }) {
    if (invalidParameter != null) {
      return invalidParameter();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Exception value) $default, {
    required TResult Function(DatabaseClientException value)
        databaseClientFailure,
    required TResult Function(InstanceAlreadyExistException value)
        instanceAlreadyExist,
    required TResult Function(InstanceDoesNotExistExpception value)
        instanceDoesNotExist,
    required TResult Function(InvalidParameterException value) invalidParameter,
    required TResult Function(RemoteSourceException value)
        remoteSourceException,
  }) {
    return invalidParameter(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Exception value)? $default, {
    TResult Function(DatabaseClientException value)? databaseClientFailure,
    TResult Function(InstanceAlreadyExistException value)? instanceAlreadyExist,
    TResult Function(InstanceDoesNotExistExpception value)?
        instanceDoesNotExist,
    TResult Function(InvalidParameterException value)? invalidParameter,
    TResult Function(RemoteSourceException value)? remoteSourceException,
    required TResult orElse(),
  }) {
    if (invalidParameter != null) {
      return invalidParameter(this);
    }
    return orElse();
  }
}

abstract class InvalidParameterException implements Exception {
  const factory InvalidParameterException() = _$InvalidParameterException;
}

/// @nodoc
abstract class $RemoteSourceExceptionCopyWith<$Res> {
  factory $RemoteSourceExceptionCopyWith(RemoteSourceException value,
          $Res Function(RemoteSourceException) then) =
      _$RemoteSourceExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class _$RemoteSourceExceptionCopyWithImpl<$Res>
    extends _$ExceptionCopyWithImpl<$Res>
    implements $RemoteSourceExceptionCopyWith<$Res> {
  _$RemoteSourceExceptionCopyWithImpl(
      RemoteSourceException _value, $Res Function(RemoteSourceException) _then)
      : super(_value, (v) => _then(v as RemoteSourceException));

  @override
  RemoteSourceException get _value => super._value as RemoteSourceException;
}

/// @nodoc

class _$RemoteSourceException implements RemoteSourceException {
  const _$RemoteSourceException();

  @override
  String toString() {
    return 'Exception.remoteSourceException()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is RemoteSourceException);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? message) $default, {
    required TResult Function() databaseClientFailure,
    required TResult Function() instanceAlreadyExist,
    required TResult Function() instanceDoesNotExist,
    required TResult Function() invalidParameter,
    required TResult Function() remoteSourceException,
  }) {
    return remoteSourceException();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? message)? $default, {
    TResult Function()? databaseClientFailure,
    TResult Function()? instanceAlreadyExist,
    TResult Function()? instanceDoesNotExist,
    TResult Function()? invalidParameter,
    TResult Function()? remoteSourceException,
    required TResult orElse(),
  }) {
    if (remoteSourceException != null) {
      return remoteSourceException();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Exception value) $default, {
    required TResult Function(DatabaseClientException value)
        databaseClientFailure,
    required TResult Function(InstanceAlreadyExistException value)
        instanceAlreadyExist,
    required TResult Function(InstanceDoesNotExistExpception value)
        instanceDoesNotExist,
    required TResult Function(InvalidParameterException value) invalidParameter,
    required TResult Function(RemoteSourceException value)
        remoteSourceException,
  }) {
    return remoteSourceException(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Exception value)? $default, {
    TResult Function(DatabaseClientException value)? databaseClientFailure,
    TResult Function(InstanceAlreadyExistException value)? instanceAlreadyExist,
    TResult Function(InstanceDoesNotExistExpception value)?
        instanceDoesNotExist,
    TResult Function(InvalidParameterException value)? invalidParameter,
    TResult Function(RemoteSourceException value)? remoteSourceException,
    required TResult orElse(),
  }) {
    if (remoteSourceException != null) {
      return remoteSourceException(this);
    }
    return orElse();
  }
}

abstract class RemoteSourceException implements Exception {
  const factory RemoteSourceException() = _$RemoteSourceException;
}

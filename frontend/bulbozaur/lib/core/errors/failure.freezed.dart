// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FailureTearOff {
  const _$FailureTearOff();

  _Failure call({String? message}) {
    return _Failure(
      message: message,
    );
  }

  DatabaseClientFailure databaseClientFailure() {
    return const DatabaseClientFailure();
  }

  InstanceAlreadyExistFailure instanceAlreadyExist() {
    return const InstanceAlreadyExistFailure();
  }

  InstanceDoesNotExistFailure instanceDoesNotExist() {
    return const InstanceDoesNotExistFailure();
  }

  InvalidParameterFailure invalidParameter() {
    return const InvalidParameterFailure();
  }

  RemoteSourceFailure remoteSourceFailure() {
    return const RemoteSourceFailure();
  }
}

/// @nodoc
const $Failure = _$FailureTearOff();

/// @nodoc
mixin _$Failure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? message) $default, {
    required TResult Function() databaseClientFailure,
    required TResult Function() instanceAlreadyExist,
    required TResult Function() instanceDoesNotExist,
    required TResult Function() invalidParameter,
    required TResult Function() remoteSourceFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? message)? $default, {
    TResult Function()? databaseClientFailure,
    TResult Function()? instanceAlreadyExist,
    TResult Function()? instanceDoesNotExist,
    TResult Function()? invalidParameter,
    TResult Function()? remoteSourceFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Failure value) $default, {
    required TResult Function(DatabaseClientFailure value)
        databaseClientFailure,
    required TResult Function(InstanceAlreadyExistFailure value)
        instanceAlreadyExist,
    required TResult Function(InstanceDoesNotExistFailure value)
        instanceDoesNotExist,
    required TResult Function(InvalidParameterFailure value) invalidParameter,
    required TResult Function(RemoteSourceFailure value) remoteSourceFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Failure value)? $default, {
    TResult Function(DatabaseClientFailure value)? databaseClientFailure,
    TResult Function(InstanceAlreadyExistFailure value)? instanceAlreadyExist,
    TResult Function(InstanceDoesNotExistFailure value)? instanceDoesNotExist,
    TResult Function(InvalidParameterFailure value)? invalidParameter,
    TResult Function(RemoteSourceFailure value)? remoteSourceFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$FailureCopyWithImpl<$Res> implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  final Failure _value;
  // ignore: unused_field
  final $Res Function(Failure) _then;
}

/// @nodoc
abstract class _$FailureCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) =
      __$FailureCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class __$FailureCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(_Failure _value, $Res Function(_Failure) _then)
      : super(_value, (v) => _then(v as _Failure));

  @override
  _Failure get _value => super._value as _Failure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_Failure(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Failure implements _Failure {
  const _$_Failure({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'Failure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Failure &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$FailureCopyWith<_Failure> get copyWith =>
      __$FailureCopyWithImpl<_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? message) $default, {
    required TResult Function() databaseClientFailure,
    required TResult Function() instanceAlreadyExist,
    required TResult Function() instanceDoesNotExist,
    required TResult Function() invalidParameter,
    required TResult Function() remoteSourceFailure,
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
    TResult Function()? remoteSourceFailure,
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
    TResult Function(_Failure value) $default, {
    required TResult Function(DatabaseClientFailure value)
        databaseClientFailure,
    required TResult Function(InstanceAlreadyExistFailure value)
        instanceAlreadyExist,
    required TResult Function(InstanceDoesNotExistFailure value)
        instanceDoesNotExist,
    required TResult Function(InvalidParameterFailure value) invalidParameter,
    required TResult Function(RemoteSourceFailure value) remoteSourceFailure,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Failure value)? $default, {
    TResult Function(DatabaseClientFailure value)? databaseClientFailure,
    TResult Function(InstanceAlreadyExistFailure value)? instanceAlreadyExist,
    TResult Function(InstanceDoesNotExistFailure value)? instanceDoesNotExist,
    TResult Function(InvalidParameterFailure value)? invalidParameter,
    TResult Function(RemoteSourceFailure value)? remoteSourceFailure,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _Failure implements Failure {
  const factory _Failure({String? message}) = _$_Failure;

  String? get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FailureCopyWith<_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatabaseClientFailureCopyWith<$Res> {
  factory $DatabaseClientFailureCopyWith(DatabaseClientFailure value,
          $Res Function(DatabaseClientFailure) then) =
      _$DatabaseClientFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$DatabaseClientFailureCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res>
    implements $DatabaseClientFailureCopyWith<$Res> {
  _$DatabaseClientFailureCopyWithImpl(
      DatabaseClientFailure _value, $Res Function(DatabaseClientFailure) _then)
      : super(_value, (v) => _then(v as DatabaseClientFailure));

  @override
  DatabaseClientFailure get _value => super._value as DatabaseClientFailure;
}

/// @nodoc

class _$DatabaseClientFailure implements DatabaseClientFailure {
  const _$DatabaseClientFailure();

  @override
  String toString() {
    return 'Failure.databaseClientFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DatabaseClientFailure);
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
    required TResult Function() remoteSourceFailure,
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
    TResult Function()? remoteSourceFailure,
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
    TResult Function(_Failure value) $default, {
    required TResult Function(DatabaseClientFailure value)
        databaseClientFailure,
    required TResult Function(InstanceAlreadyExistFailure value)
        instanceAlreadyExist,
    required TResult Function(InstanceDoesNotExistFailure value)
        instanceDoesNotExist,
    required TResult Function(InvalidParameterFailure value) invalidParameter,
    required TResult Function(RemoteSourceFailure value) remoteSourceFailure,
  }) {
    return databaseClientFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Failure value)? $default, {
    TResult Function(DatabaseClientFailure value)? databaseClientFailure,
    TResult Function(InstanceAlreadyExistFailure value)? instanceAlreadyExist,
    TResult Function(InstanceDoesNotExistFailure value)? instanceDoesNotExist,
    TResult Function(InvalidParameterFailure value)? invalidParameter,
    TResult Function(RemoteSourceFailure value)? remoteSourceFailure,
    required TResult orElse(),
  }) {
    if (databaseClientFailure != null) {
      return databaseClientFailure(this);
    }
    return orElse();
  }
}

abstract class DatabaseClientFailure implements Failure {
  const factory DatabaseClientFailure() = _$DatabaseClientFailure;
}

/// @nodoc
abstract class $InstanceAlreadyExistFailureCopyWith<$Res> {
  factory $InstanceAlreadyExistFailureCopyWith(
          InstanceAlreadyExistFailure value,
          $Res Function(InstanceAlreadyExistFailure) then) =
      _$InstanceAlreadyExistFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$InstanceAlreadyExistFailureCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res>
    implements $InstanceAlreadyExistFailureCopyWith<$Res> {
  _$InstanceAlreadyExistFailureCopyWithImpl(InstanceAlreadyExistFailure _value,
      $Res Function(InstanceAlreadyExistFailure) _then)
      : super(_value, (v) => _then(v as InstanceAlreadyExistFailure));

  @override
  InstanceAlreadyExistFailure get _value =>
      super._value as InstanceAlreadyExistFailure;
}

/// @nodoc

class _$InstanceAlreadyExistFailure implements InstanceAlreadyExistFailure {
  const _$InstanceAlreadyExistFailure();

  @override
  String toString() {
    return 'Failure.instanceAlreadyExist()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InstanceAlreadyExistFailure);
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
    required TResult Function() remoteSourceFailure,
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
    TResult Function()? remoteSourceFailure,
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
    TResult Function(_Failure value) $default, {
    required TResult Function(DatabaseClientFailure value)
        databaseClientFailure,
    required TResult Function(InstanceAlreadyExistFailure value)
        instanceAlreadyExist,
    required TResult Function(InstanceDoesNotExistFailure value)
        instanceDoesNotExist,
    required TResult Function(InvalidParameterFailure value) invalidParameter,
    required TResult Function(RemoteSourceFailure value) remoteSourceFailure,
  }) {
    return instanceAlreadyExist(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Failure value)? $default, {
    TResult Function(DatabaseClientFailure value)? databaseClientFailure,
    TResult Function(InstanceAlreadyExistFailure value)? instanceAlreadyExist,
    TResult Function(InstanceDoesNotExistFailure value)? instanceDoesNotExist,
    TResult Function(InvalidParameterFailure value)? invalidParameter,
    TResult Function(RemoteSourceFailure value)? remoteSourceFailure,
    required TResult orElse(),
  }) {
    if (instanceAlreadyExist != null) {
      return instanceAlreadyExist(this);
    }
    return orElse();
  }
}

abstract class InstanceAlreadyExistFailure implements Failure {
  const factory InstanceAlreadyExistFailure() = _$InstanceAlreadyExistFailure;
}

/// @nodoc
abstract class $InstanceDoesNotExistFailureCopyWith<$Res> {
  factory $InstanceDoesNotExistFailureCopyWith(
          InstanceDoesNotExistFailure value,
          $Res Function(InstanceDoesNotExistFailure) then) =
      _$InstanceDoesNotExistFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$InstanceDoesNotExistFailureCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res>
    implements $InstanceDoesNotExistFailureCopyWith<$Res> {
  _$InstanceDoesNotExistFailureCopyWithImpl(InstanceDoesNotExistFailure _value,
      $Res Function(InstanceDoesNotExistFailure) _then)
      : super(_value, (v) => _then(v as InstanceDoesNotExistFailure));

  @override
  InstanceDoesNotExistFailure get _value =>
      super._value as InstanceDoesNotExistFailure;
}

/// @nodoc

class _$InstanceDoesNotExistFailure implements InstanceDoesNotExistFailure {
  const _$InstanceDoesNotExistFailure();

  @override
  String toString() {
    return 'Failure.instanceDoesNotExist()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InstanceDoesNotExistFailure);
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
    required TResult Function() remoteSourceFailure,
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
    TResult Function()? remoteSourceFailure,
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
    TResult Function(_Failure value) $default, {
    required TResult Function(DatabaseClientFailure value)
        databaseClientFailure,
    required TResult Function(InstanceAlreadyExistFailure value)
        instanceAlreadyExist,
    required TResult Function(InstanceDoesNotExistFailure value)
        instanceDoesNotExist,
    required TResult Function(InvalidParameterFailure value) invalidParameter,
    required TResult Function(RemoteSourceFailure value) remoteSourceFailure,
  }) {
    return instanceDoesNotExist(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Failure value)? $default, {
    TResult Function(DatabaseClientFailure value)? databaseClientFailure,
    TResult Function(InstanceAlreadyExistFailure value)? instanceAlreadyExist,
    TResult Function(InstanceDoesNotExistFailure value)? instanceDoesNotExist,
    TResult Function(InvalidParameterFailure value)? invalidParameter,
    TResult Function(RemoteSourceFailure value)? remoteSourceFailure,
    required TResult orElse(),
  }) {
    if (instanceDoesNotExist != null) {
      return instanceDoesNotExist(this);
    }
    return orElse();
  }
}

abstract class InstanceDoesNotExistFailure implements Failure {
  const factory InstanceDoesNotExistFailure() = _$InstanceDoesNotExistFailure;
}

/// @nodoc
abstract class $InvalidParameterFailureCopyWith<$Res> {
  factory $InvalidParameterFailureCopyWith(InvalidParameterFailure value,
          $Res Function(InvalidParameterFailure) then) =
      _$InvalidParameterFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$InvalidParameterFailureCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res>
    implements $InvalidParameterFailureCopyWith<$Res> {
  _$InvalidParameterFailureCopyWithImpl(InvalidParameterFailure _value,
      $Res Function(InvalidParameterFailure) _then)
      : super(_value, (v) => _then(v as InvalidParameterFailure));

  @override
  InvalidParameterFailure get _value => super._value as InvalidParameterFailure;
}

/// @nodoc

class _$InvalidParameterFailure implements InvalidParameterFailure {
  const _$InvalidParameterFailure();

  @override
  String toString() {
    return 'Failure.invalidParameter()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InvalidParameterFailure);
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
    required TResult Function() remoteSourceFailure,
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
    TResult Function()? remoteSourceFailure,
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
    TResult Function(_Failure value) $default, {
    required TResult Function(DatabaseClientFailure value)
        databaseClientFailure,
    required TResult Function(InstanceAlreadyExistFailure value)
        instanceAlreadyExist,
    required TResult Function(InstanceDoesNotExistFailure value)
        instanceDoesNotExist,
    required TResult Function(InvalidParameterFailure value) invalidParameter,
    required TResult Function(RemoteSourceFailure value) remoteSourceFailure,
  }) {
    return invalidParameter(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Failure value)? $default, {
    TResult Function(DatabaseClientFailure value)? databaseClientFailure,
    TResult Function(InstanceAlreadyExistFailure value)? instanceAlreadyExist,
    TResult Function(InstanceDoesNotExistFailure value)? instanceDoesNotExist,
    TResult Function(InvalidParameterFailure value)? invalidParameter,
    TResult Function(RemoteSourceFailure value)? remoteSourceFailure,
    required TResult orElse(),
  }) {
    if (invalidParameter != null) {
      return invalidParameter(this);
    }
    return orElse();
  }
}

abstract class InvalidParameterFailure implements Failure {
  const factory InvalidParameterFailure() = _$InvalidParameterFailure;
}

/// @nodoc
abstract class $RemoteSourceFailureCopyWith<$Res> {
  factory $RemoteSourceFailureCopyWith(
          RemoteSourceFailure value, $Res Function(RemoteSourceFailure) then) =
      _$RemoteSourceFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$RemoteSourceFailureCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res>
    implements $RemoteSourceFailureCopyWith<$Res> {
  _$RemoteSourceFailureCopyWithImpl(
      RemoteSourceFailure _value, $Res Function(RemoteSourceFailure) _then)
      : super(_value, (v) => _then(v as RemoteSourceFailure));

  @override
  RemoteSourceFailure get _value => super._value as RemoteSourceFailure;
}

/// @nodoc

class _$RemoteSourceFailure implements RemoteSourceFailure {
  const _$RemoteSourceFailure();

  @override
  String toString() {
    return 'Failure.remoteSourceFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is RemoteSourceFailure);
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
    required TResult Function() remoteSourceFailure,
  }) {
    return remoteSourceFailure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? message)? $default, {
    TResult Function()? databaseClientFailure,
    TResult Function()? instanceAlreadyExist,
    TResult Function()? instanceDoesNotExist,
    TResult Function()? invalidParameter,
    TResult Function()? remoteSourceFailure,
    required TResult orElse(),
  }) {
    if (remoteSourceFailure != null) {
      return remoteSourceFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Failure value) $default, {
    required TResult Function(DatabaseClientFailure value)
        databaseClientFailure,
    required TResult Function(InstanceAlreadyExistFailure value)
        instanceAlreadyExist,
    required TResult Function(InstanceDoesNotExistFailure value)
        instanceDoesNotExist,
    required TResult Function(InvalidParameterFailure value) invalidParameter,
    required TResult Function(RemoteSourceFailure value) remoteSourceFailure,
  }) {
    return remoteSourceFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Failure value)? $default, {
    TResult Function(DatabaseClientFailure value)? databaseClientFailure,
    TResult Function(InstanceAlreadyExistFailure value)? instanceAlreadyExist,
    TResult Function(InstanceDoesNotExistFailure value)? instanceDoesNotExist,
    TResult Function(InvalidParameterFailure value)? invalidParameter,
    TResult Function(RemoteSourceFailure value)? remoteSourceFailure,
    required TResult orElse(),
  }) {
    if (remoteSourceFailure != null) {
      return remoteSourceFailure(this);
    }
    return orElse();
  }
}

abstract class RemoteSourceFailure implements Failure {
  const factory RemoteSourceFailure() = _$RemoteSourceFailure;
}

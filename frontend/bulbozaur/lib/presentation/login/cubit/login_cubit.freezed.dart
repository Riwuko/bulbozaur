// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'login_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LoginStateTearOff {
  const _$LoginStateTearOff();

  _HomeStateInitial initial() {
    return const _HomeStateInitial();
  }

  _HomeStateFailure failure() {
    return const _HomeStateFailure();
  }

  _HomeStateLoginSuccess loginSuccess() {
    return const _HomeStateLoginSuccess();
  }

  _HomeStateInvalidAdress invalidAdress() {
    return const _HomeStateInvalidAdress();
  }
}

/// @nodoc
const $LoginState = _$LoginStateTearOff();

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() failure,
    required TResult Function() loginSuccess,
    required TResult Function() invalidAdress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? failure,
    TResult Function()? loginSuccess,
    TResult Function()? invalidAdress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeStateInitial value) initial,
    required TResult Function(_HomeStateFailure value) failure,
    required TResult Function(_HomeStateLoginSuccess value) loginSuccess,
    required TResult Function(_HomeStateInvalidAdress value) invalidAdress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeStateInitial value)? initial,
    TResult Function(_HomeStateFailure value)? failure,
    TResult Function(_HomeStateLoginSuccess value)? loginSuccess,
    TResult Function(_HomeStateInvalidAdress value)? invalidAdress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;
}

/// @nodoc
abstract class _$HomeStateInitialCopyWith<$Res> {
  factory _$HomeStateInitialCopyWith(
          _HomeStateInitial value, $Res Function(_HomeStateInitial) then) =
      __$HomeStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$HomeStateInitialCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res>
    implements _$HomeStateInitialCopyWith<$Res> {
  __$HomeStateInitialCopyWithImpl(
      _HomeStateInitial _value, $Res Function(_HomeStateInitial) _then)
      : super(_value, (v) => _then(v as _HomeStateInitial));

  @override
  _HomeStateInitial get _value => super._value as _HomeStateInitial;
}

/// @nodoc

class _$_HomeStateInitial implements _HomeStateInitial {
  const _$_HomeStateInitial();

  @override
  String toString() {
    return 'LoginState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _HomeStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() failure,
    required TResult Function() loginSuccess,
    required TResult Function() invalidAdress,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? failure,
    TResult Function()? loginSuccess,
    TResult Function()? invalidAdress,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeStateInitial value) initial,
    required TResult Function(_HomeStateFailure value) failure,
    required TResult Function(_HomeStateLoginSuccess value) loginSuccess,
    required TResult Function(_HomeStateInvalidAdress value) invalidAdress,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeStateInitial value)? initial,
    TResult Function(_HomeStateFailure value)? failure,
    TResult Function(_HomeStateLoginSuccess value)? loginSuccess,
    TResult Function(_HomeStateInvalidAdress value)? invalidAdress,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _HomeStateInitial implements LoginState {
  const factory _HomeStateInitial() = _$_HomeStateInitial;
}

/// @nodoc
abstract class _$HomeStateFailureCopyWith<$Res> {
  factory _$HomeStateFailureCopyWith(
          _HomeStateFailure value, $Res Function(_HomeStateFailure) then) =
      __$HomeStateFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$HomeStateFailureCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res>
    implements _$HomeStateFailureCopyWith<$Res> {
  __$HomeStateFailureCopyWithImpl(
      _HomeStateFailure _value, $Res Function(_HomeStateFailure) _then)
      : super(_value, (v) => _then(v as _HomeStateFailure));

  @override
  _HomeStateFailure get _value => super._value as _HomeStateFailure;
}

/// @nodoc

class _$_HomeStateFailure implements _HomeStateFailure {
  const _$_HomeStateFailure();

  @override
  String toString() {
    return 'LoginState.failure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _HomeStateFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() failure,
    required TResult Function() loginSuccess,
    required TResult Function() invalidAdress,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? failure,
    TResult Function()? loginSuccess,
    TResult Function()? invalidAdress,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeStateInitial value) initial,
    required TResult Function(_HomeStateFailure value) failure,
    required TResult Function(_HomeStateLoginSuccess value) loginSuccess,
    required TResult Function(_HomeStateInvalidAdress value) invalidAdress,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeStateInitial value)? initial,
    TResult Function(_HomeStateFailure value)? failure,
    TResult Function(_HomeStateLoginSuccess value)? loginSuccess,
    TResult Function(_HomeStateInvalidAdress value)? invalidAdress,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _HomeStateFailure implements LoginState {
  const factory _HomeStateFailure() = _$_HomeStateFailure;
}

/// @nodoc
abstract class _$HomeStateLoginSuccessCopyWith<$Res> {
  factory _$HomeStateLoginSuccessCopyWith(_HomeStateLoginSuccess value,
          $Res Function(_HomeStateLoginSuccess) then) =
      __$HomeStateLoginSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$HomeStateLoginSuccessCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res>
    implements _$HomeStateLoginSuccessCopyWith<$Res> {
  __$HomeStateLoginSuccessCopyWithImpl(_HomeStateLoginSuccess _value,
      $Res Function(_HomeStateLoginSuccess) _then)
      : super(_value, (v) => _then(v as _HomeStateLoginSuccess));

  @override
  _HomeStateLoginSuccess get _value => super._value as _HomeStateLoginSuccess;
}

/// @nodoc

@Implements(LoginStateLoginSuccess)
class _$_HomeStateLoginSuccess implements _HomeStateLoginSuccess {
  const _$_HomeStateLoginSuccess();

  @override
  String toString() {
    return 'LoginState.loginSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _HomeStateLoginSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() failure,
    required TResult Function() loginSuccess,
    required TResult Function() invalidAdress,
  }) {
    return loginSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? failure,
    TResult Function()? loginSuccess,
    TResult Function()? invalidAdress,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeStateInitial value) initial,
    required TResult Function(_HomeStateFailure value) failure,
    required TResult Function(_HomeStateLoginSuccess value) loginSuccess,
    required TResult Function(_HomeStateInvalidAdress value) invalidAdress,
  }) {
    return loginSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeStateInitial value)? initial,
    TResult Function(_HomeStateFailure value)? failure,
    TResult Function(_HomeStateLoginSuccess value)? loginSuccess,
    TResult Function(_HomeStateInvalidAdress value)? invalidAdress,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess(this);
    }
    return orElse();
  }
}

abstract class _HomeStateLoginSuccess
    implements LoginState, LoginStateLoginSuccess {
  const factory _HomeStateLoginSuccess() = _$_HomeStateLoginSuccess;
}

/// @nodoc
abstract class _$HomeStateInvalidAdressCopyWith<$Res> {
  factory _$HomeStateInvalidAdressCopyWith(_HomeStateInvalidAdress value,
          $Res Function(_HomeStateInvalidAdress) then) =
      __$HomeStateInvalidAdressCopyWithImpl<$Res>;
}

/// @nodoc
class __$HomeStateInvalidAdressCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res>
    implements _$HomeStateInvalidAdressCopyWith<$Res> {
  __$HomeStateInvalidAdressCopyWithImpl(_HomeStateInvalidAdress _value,
      $Res Function(_HomeStateInvalidAdress) _then)
      : super(_value, (v) => _then(v as _HomeStateInvalidAdress));

  @override
  _HomeStateInvalidAdress get _value => super._value as _HomeStateInvalidAdress;
}

/// @nodoc

class _$_HomeStateInvalidAdress implements _HomeStateInvalidAdress {
  const _$_HomeStateInvalidAdress();

  @override
  String toString() {
    return 'LoginState.invalidAdress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _HomeStateInvalidAdress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() failure,
    required TResult Function() loginSuccess,
    required TResult Function() invalidAdress,
  }) {
    return invalidAdress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? failure,
    TResult Function()? loginSuccess,
    TResult Function()? invalidAdress,
    required TResult orElse(),
  }) {
    if (invalidAdress != null) {
      return invalidAdress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeStateInitial value) initial,
    required TResult Function(_HomeStateFailure value) failure,
    required TResult Function(_HomeStateLoginSuccess value) loginSuccess,
    required TResult Function(_HomeStateInvalidAdress value) invalidAdress,
  }) {
    return invalidAdress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeStateInitial value)? initial,
    TResult Function(_HomeStateFailure value)? failure,
    TResult Function(_HomeStateLoginSuccess value)? loginSuccess,
    TResult Function(_HomeStateInvalidAdress value)? invalidAdress,
    required TResult orElse(),
  }) {
    if (invalidAdress != null) {
      return invalidAdress(this);
    }
    return orElse();
  }
}

abstract class _HomeStateInvalidAdress implements LoginState {
  const factory _HomeStateInvalidAdress() = _$_HomeStateInvalidAdress;
}

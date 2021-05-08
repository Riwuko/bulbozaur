// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  _HomeStateInitial initial() {
    return const _HomeStateInitial();
  }

  _HomeStateUpdateTemperature updateTemperature({required int temperature}) {
    return _HomeStateUpdateTemperature(
      temperature: temperature,
    );
  }

  _HomeStateFailure failure() {
    return const _HomeStateFailure();
  }

  _HomeStateUpdateCounter updateCounter({required int counter}) {
    return _HomeStateUpdateCounter(
      counter: counter,
    );
  }
}

/// @nodoc
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int temperature) updateTemperature,
    required TResult Function() failure,
    required TResult Function(int counter) updateCounter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int temperature)? updateTemperature,
    TResult Function()? failure,
    TResult Function(int counter)? updateCounter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeStateInitial value) initial,
    required TResult Function(_HomeStateUpdateTemperature value)
        updateTemperature,
    required TResult Function(_HomeStateFailure value) failure,
    required TResult Function(_HomeStateUpdateCounter value) updateCounter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeStateInitial value)? initial,
    TResult Function(_HomeStateUpdateTemperature value)? updateTemperature,
    TResult Function(_HomeStateFailure value)? failure,
    TResult Function(_HomeStateUpdateCounter value)? updateCounter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;
}

/// @nodoc
abstract class _$HomeStateInitialCopyWith<$Res> {
  factory _$HomeStateInitialCopyWith(
          _HomeStateInitial value, $Res Function(_HomeStateInitial) then) =
      __$HomeStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$HomeStateInitialCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateInitialCopyWith<$Res> {
  __$HomeStateInitialCopyWithImpl(
      _HomeStateInitial _value, $Res Function(_HomeStateInitial) _then)
      : super(_value, (v) => _then(v as _HomeStateInitial));

  @override
  _HomeStateInitial get _value => super._value as _HomeStateInitial;
}

/// @nodoc

@Implements(UpdateTemperatureState)
@Implements(UpdateCounterState)
class _$_HomeStateInitial implements _HomeStateInitial {
  const _$_HomeStateInitial();

  @override
  String toString() {
    return 'HomeState.initial()';
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
    required TResult Function(int temperature) updateTemperature,
    required TResult Function() failure,
    required TResult Function(int counter) updateCounter,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int temperature)? updateTemperature,
    TResult Function()? failure,
    TResult Function(int counter)? updateCounter,
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
    required TResult Function(_HomeStateUpdateTemperature value)
        updateTemperature,
    required TResult Function(_HomeStateFailure value) failure,
    required TResult Function(_HomeStateUpdateCounter value) updateCounter,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeStateInitial value)? initial,
    TResult Function(_HomeStateUpdateTemperature value)? updateTemperature,
    TResult Function(_HomeStateFailure value)? failure,
    TResult Function(_HomeStateUpdateCounter value)? updateCounter,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _HomeStateInitial
    implements HomeState, UpdateTemperatureState, UpdateCounterState {
  const factory _HomeStateInitial() = _$_HomeStateInitial;
}

/// @nodoc
abstract class _$HomeStateUpdateTemperatureCopyWith<$Res> {
  factory _$HomeStateUpdateTemperatureCopyWith(
          _HomeStateUpdateTemperature value,
          $Res Function(_HomeStateUpdateTemperature) then) =
      __$HomeStateUpdateTemperatureCopyWithImpl<$Res>;
  $Res call({int temperature});
}

/// @nodoc
class __$HomeStateUpdateTemperatureCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateUpdateTemperatureCopyWith<$Res> {
  __$HomeStateUpdateTemperatureCopyWithImpl(_HomeStateUpdateTemperature _value,
      $Res Function(_HomeStateUpdateTemperature) _then)
      : super(_value, (v) => _then(v as _HomeStateUpdateTemperature));

  @override
  _HomeStateUpdateTemperature get _value =>
      super._value as _HomeStateUpdateTemperature;

  @override
  $Res call({
    Object? temperature = freezed,
  }) {
    return _then(_HomeStateUpdateTemperature(
      temperature: temperature == freezed
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@Implements(UpdateTemperatureState)
class _$_HomeStateUpdateTemperature implements _HomeStateUpdateTemperature {
  const _$_HomeStateUpdateTemperature({required this.temperature});

  @override
  final int temperature;

  @override
  String toString() {
    return 'HomeState.updateTemperature(temperature: $temperature)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomeStateUpdateTemperature &&
            (identical(other.temperature, temperature) ||
                const DeepCollectionEquality()
                    .equals(other.temperature, temperature)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(temperature);

  @JsonKey(ignore: true)
  @override
  _$HomeStateUpdateTemperatureCopyWith<_HomeStateUpdateTemperature>
      get copyWith => __$HomeStateUpdateTemperatureCopyWithImpl<
          _HomeStateUpdateTemperature>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int temperature) updateTemperature,
    required TResult Function() failure,
    required TResult Function(int counter) updateCounter,
  }) {
    return updateTemperature(temperature);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int temperature)? updateTemperature,
    TResult Function()? failure,
    TResult Function(int counter)? updateCounter,
    required TResult orElse(),
  }) {
    if (updateTemperature != null) {
      return updateTemperature(temperature);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeStateInitial value) initial,
    required TResult Function(_HomeStateUpdateTemperature value)
        updateTemperature,
    required TResult Function(_HomeStateFailure value) failure,
    required TResult Function(_HomeStateUpdateCounter value) updateCounter,
  }) {
    return updateTemperature(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeStateInitial value)? initial,
    TResult Function(_HomeStateUpdateTemperature value)? updateTemperature,
    TResult Function(_HomeStateFailure value)? failure,
    TResult Function(_HomeStateUpdateCounter value)? updateCounter,
    required TResult orElse(),
  }) {
    if (updateTemperature != null) {
      return updateTemperature(this);
    }
    return orElse();
  }
}

abstract class _HomeStateUpdateTemperature
    implements HomeState, UpdateTemperatureState {
  const factory _HomeStateUpdateTemperature({required int temperature}) =
      _$_HomeStateUpdateTemperature;

  int get temperature => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$HomeStateUpdateTemperatureCopyWith<_HomeStateUpdateTemperature>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$HomeStateFailureCopyWith<$Res> {
  factory _$HomeStateFailureCopyWith(
          _HomeStateFailure value, $Res Function(_HomeStateFailure) then) =
      __$HomeStateFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$HomeStateFailureCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateFailureCopyWith<$Res> {
  __$HomeStateFailureCopyWithImpl(
      _HomeStateFailure _value, $Res Function(_HomeStateFailure) _then)
      : super(_value, (v) => _then(v as _HomeStateFailure));

  @override
  _HomeStateFailure get _value => super._value as _HomeStateFailure;
}

/// @nodoc

@Implements(UpdateTemperatureState)
class _$_HomeStateFailure implements _HomeStateFailure {
  const _$_HomeStateFailure();

  @override
  String toString() {
    return 'HomeState.failure()';
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
    required TResult Function(int temperature) updateTemperature,
    required TResult Function() failure,
    required TResult Function(int counter) updateCounter,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int temperature)? updateTemperature,
    TResult Function()? failure,
    TResult Function(int counter)? updateCounter,
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
    required TResult Function(_HomeStateUpdateTemperature value)
        updateTemperature,
    required TResult Function(_HomeStateFailure value) failure,
    required TResult Function(_HomeStateUpdateCounter value) updateCounter,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeStateInitial value)? initial,
    TResult Function(_HomeStateUpdateTemperature value)? updateTemperature,
    TResult Function(_HomeStateFailure value)? failure,
    TResult Function(_HomeStateUpdateCounter value)? updateCounter,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _HomeStateFailure implements HomeState, UpdateTemperatureState {
  const factory _HomeStateFailure() = _$_HomeStateFailure;
}

/// @nodoc
abstract class _$HomeStateUpdateCounterCopyWith<$Res> {
  factory _$HomeStateUpdateCounterCopyWith(_HomeStateUpdateCounter value,
          $Res Function(_HomeStateUpdateCounter) then) =
      __$HomeStateUpdateCounterCopyWithImpl<$Res>;
  $Res call({int counter});
}

/// @nodoc
class __$HomeStateUpdateCounterCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateUpdateCounterCopyWith<$Res> {
  __$HomeStateUpdateCounterCopyWithImpl(_HomeStateUpdateCounter _value,
      $Res Function(_HomeStateUpdateCounter) _then)
      : super(_value, (v) => _then(v as _HomeStateUpdateCounter));

  @override
  _HomeStateUpdateCounter get _value => super._value as _HomeStateUpdateCounter;

  @override
  $Res call({
    Object? counter = freezed,
  }) {
    return _then(_HomeStateUpdateCounter(
      counter: counter == freezed
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@Implements(UpdateCounterState)
class _$_HomeStateUpdateCounter implements _HomeStateUpdateCounter {
  const _$_HomeStateUpdateCounter({required this.counter});

  @override
  final int counter;

  @override
  String toString() {
    return 'HomeState.updateCounter(counter: $counter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomeStateUpdateCounter &&
            (identical(other.counter, counter) ||
                const DeepCollectionEquality().equals(other.counter, counter)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(counter);

  @JsonKey(ignore: true)
  @override
  _$HomeStateUpdateCounterCopyWith<_HomeStateUpdateCounter> get copyWith =>
      __$HomeStateUpdateCounterCopyWithImpl<_HomeStateUpdateCounter>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int temperature) updateTemperature,
    required TResult Function() failure,
    required TResult Function(int counter) updateCounter,
  }) {
    return updateCounter(counter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int temperature)? updateTemperature,
    TResult Function()? failure,
    TResult Function(int counter)? updateCounter,
    required TResult orElse(),
  }) {
    if (updateCounter != null) {
      return updateCounter(counter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeStateInitial value) initial,
    required TResult Function(_HomeStateUpdateTemperature value)
        updateTemperature,
    required TResult Function(_HomeStateFailure value) failure,
    required TResult Function(_HomeStateUpdateCounter value) updateCounter,
  }) {
    return updateCounter(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeStateInitial value)? initial,
    TResult Function(_HomeStateUpdateTemperature value)? updateTemperature,
    TResult Function(_HomeStateFailure value)? failure,
    TResult Function(_HomeStateUpdateCounter value)? updateCounter,
    required TResult orElse(),
  }) {
    if (updateCounter != null) {
      return updateCounter(this);
    }
    return orElse();
  }
}

abstract class _HomeStateUpdateCounter
    implements HomeState, UpdateCounterState {
  const factory _HomeStateUpdateCounter({required int counter}) =
      _$_HomeStateUpdateCounter;

  int get counter => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$HomeStateUpdateCounterCopyWith<_HomeStateUpdateCounter> get copyWith =>
      throw _privateConstructorUsedError;
}

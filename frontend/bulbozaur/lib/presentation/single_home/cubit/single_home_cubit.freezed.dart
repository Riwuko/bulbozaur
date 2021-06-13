// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'single_home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SingleHomeStateTearOff {
  const _$SingleHomeStateTearOff();

  _SingleHomeInitial initial() {
    return const _SingleHomeInitial();
  }

  _SingleHomeFailure failure() {
    return const _SingleHomeFailure();
  }

  _SingleHomeCreateSchedule createSchedule() {
    return const _SingleHomeCreateSchedule();
  }

  _SingleHomeStateStartDisplaying startDisplaying(
      {required List<deviceDisplay> device,
      required List<ScheduleEntity> schedules}) {
    return _SingleHomeStateStartDisplaying(
      device: device,
      schedules: schedules,
    );
  }

  _SingleHomeStateCleanState cleanState() {
    return const _SingleHomeStateCleanState();
  }
}

/// @nodoc
const $SingleHomeState = _$SingleHomeStateTearOff();

/// @nodoc
mixin _$SingleHomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() failure,
    required TResult Function() createSchedule,
    required TResult Function(
            List<deviceDisplay> device, List<ScheduleEntity> schedules)
        startDisplaying,
    required TResult Function() cleanState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? failure,
    TResult Function()? createSchedule,
    TResult Function(
            List<deviceDisplay> device, List<ScheduleEntity> schedules)?
        startDisplaying,
    TResult Function()? cleanState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SingleHomeInitial value) initial,
    required TResult Function(_SingleHomeFailure value) failure,
    required TResult Function(_SingleHomeCreateSchedule value) createSchedule,
    required TResult Function(_SingleHomeStateStartDisplaying value)
        startDisplaying,
    required TResult Function(_SingleHomeStateCleanState value) cleanState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SingleHomeInitial value)? initial,
    TResult Function(_SingleHomeFailure value)? failure,
    TResult Function(_SingleHomeCreateSchedule value)? createSchedule,
    TResult Function(_SingleHomeStateStartDisplaying value)? startDisplaying,
    TResult Function(_SingleHomeStateCleanState value)? cleanState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleHomeStateCopyWith<$Res> {
  factory $SingleHomeStateCopyWith(
          SingleHomeState value, $Res Function(SingleHomeState) then) =
      _$SingleHomeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SingleHomeStateCopyWithImpl<$Res>
    implements $SingleHomeStateCopyWith<$Res> {
  _$SingleHomeStateCopyWithImpl(this._value, this._then);

  final SingleHomeState _value;
  // ignore: unused_field
  final $Res Function(SingleHomeState) _then;
}

/// @nodoc
abstract class _$SingleHomeInitialCopyWith<$Res> {
  factory _$SingleHomeInitialCopyWith(
          _SingleHomeInitial value, $Res Function(_SingleHomeInitial) then) =
      __$SingleHomeInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$SingleHomeInitialCopyWithImpl<$Res>
    extends _$SingleHomeStateCopyWithImpl<$Res>
    implements _$SingleHomeInitialCopyWith<$Res> {
  __$SingleHomeInitialCopyWithImpl(
      _SingleHomeInitial _value, $Res Function(_SingleHomeInitial) _then)
      : super(_value, (v) => _then(v as _SingleHomeInitial));

  @override
  _SingleHomeInitial get _value => super._value as _SingleHomeInitial;
}

/// @nodoc

class _$_SingleHomeInitial implements _SingleHomeInitial {
  const _$_SingleHomeInitial();

  @override
  String toString() {
    return 'SingleHomeState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SingleHomeInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() failure,
    required TResult Function() createSchedule,
    required TResult Function(
            List<deviceDisplay> device, List<ScheduleEntity> schedules)
        startDisplaying,
    required TResult Function() cleanState,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? failure,
    TResult Function()? createSchedule,
    TResult Function(
            List<deviceDisplay> device, List<ScheduleEntity> schedules)?
        startDisplaying,
    TResult Function()? cleanState,
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
    required TResult Function(_SingleHomeInitial value) initial,
    required TResult Function(_SingleHomeFailure value) failure,
    required TResult Function(_SingleHomeCreateSchedule value) createSchedule,
    required TResult Function(_SingleHomeStateStartDisplaying value)
        startDisplaying,
    required TResult Function(_SingleHomeStateCleanState value) cleanState,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SingleHomeInitial value)? initial,
    TResult Function(_SingleHomeFailure value)? failure,
    TResult Function(_SingleHomeCreateSchedule value)? createSchedule,
    TResult Function(_SingleHomeStateStartDisplaying value)? startDisplaying,
    TResult Function(_SingleHomeStateCleanState value)? cleanState,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _SingleHomeInitial implements SingleHomeState {
  const factory _SingleHomeInitial() = _$_SingleHomeInitial;
}

/// @nodoc
abstract class _$SingleHomeFailureCopyWith<$Res> {
  factory _$SingleHomeFailureCopyWith(
          _SingleHomeFailure value, $Res Function(_SingleHomeFailure) then) =
      __$SingleHomeFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$SingleHomeFailureCopyWithImpl<$Res>
    extends _$SingleHomeStateCopyWithImpl<$Res>
    implements _$SingleHomeFailureCopyWith<$Res> {
  __$SingleHomeFailureCopyWithImpl(
      _SingleHomeFailure _value, $Res Function(_SingleHomeFailure) _then)
      : super(_value, (v) => _then(v as _SingleHomeFailure));

  @override
  _SingleHomeFailure get _value => super._value as _SingleHomeFailure;
}

/// @nodoc

class _$_SingleHomeFailure implements _SingleHomeFailure {
  const _$_SingleHomeFailure();

  @override
  String toString() {
    return 'SingleHomeState.failure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SingleHomeFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() failure,
    required TResult Function() createSchedule,
    required TResult Function(
            List<deviceDisplay> device, List<ScheduleEntity> schedules)
        startDisplaying,
    required TResult Function() cleanState,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? failure,
    TResult Function()? createSchedule,
    TResult Function(
            List<deviceDisplay> device, List<ScheduleEntity> schedules)?
        startDisplaying,
    TResult Function()? cleanState,
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
    required TResult Function(_SingleHomeInitial value) initial,
    required TResult Function(_SingleHomeFailure value) failure,
    required TResult Function(_SingleHomeCreateSchedule value) createSchedule,
    required TResult Function(_SingleHomeStateStartDisplaying value)
        startDisplaying,
    required TResult Function(_SingleHomeStateCleanState value) cleanState,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SingleHomeInitial value)? initial,
    TResult Function(_SingleHomeFailure value)? failure,
    TResult Function(_SingleHomeCreateSchedule value)? createSchedule,
    TResult Function(_SingleHomeStateStartDisplaying value)? startDisplaying,
    TResult Function(_SingleHomeStateCleanState value)? cleanState,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _SingleHomeFailure implements SingleHomeState {
  const factory _SingleHomeFailure() = _$_SingleHomeFailure;
}

/// @nodoc
abstract class _$SingleHomeCreateScheduleCopyWith<$Res> {
  factory _$SingleHomeCreateScheduleCopyWith(_SingleHomeCreateSchedule value,
          $Res Function(_SingleHomeCreateSchedule) then) =
      __$SingleHomeCreateScheduleCopyWithImpl<$Res>;
}

/// @nodoc
class __$SingleHomeCreateScheduleCopyWithImpl<$Res>
    extends _$SingleHomeStateCopyWithImpl<$Res>
    implements _$SingleHomeCreateScheduleCopyWith<$Res> {
  __$SingleHomeCreateScheduleCopyWithImpl(_SingleHomeCreateSchedule _value,
      $Res Function(_SingleHomeCreateSchedule) _then)
      : super(_value, (v) => _then(v as _SingleHomeCreateSchedule));

  @override
  _SingleHomeCreateSchedule get _value =>
      super._value as _SingleHomeCreateSchedule;
}

/// @nodoc

class _$_SingleHomeCreateSchedule implements _SingleHomeCreateSchedule {
  const _$_SingleHomeCreateSchedule();

  @override
  String toString() {
    return 'SingleHomeState.createSchedule()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SingleHomeCreateSchedule);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() failure,
    required TResult Function() createSchedule,
    required TResult Function(
            List<deviceDisplay> device, List<ScheduleEntity> schedules)
        startDisplaying,
    required TResult Function() cleanState,
  }) {
    return createSchedule();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? failure,
    TResult Function()? createSchedule,
    TResult Function(
            List<deviceDisplay> device, List<ScheduleEntity> schedules)?
        startDisplaying,
    TResult Function()? cleanState,
    required TResult orElse(),
  }) {
    if (createSchedule != null) {
      return createSchedule();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SingleHomeInitial value) initial,
    required TResult Function(_SingleHomeFailure value) failure,
    required TResult Function(_SingleHomeCreateSchedule value) createSchedule,
    required TResult Function(_SingleHomeStateStartDisplaying value)
        startDisplaying,
    required TResult Function(_SingleHomeStateCleanState value) cleanState,
  }) {
    return createSchedule(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SingleHomeInitial value)? initial,
    TResult Function(_SingleHomeFailure value)? failure,
    TResult Function(_SingleHomeCreateSchedule value)? createSchedule,
    TResult Function(_SingleHomeStateStartDisplaying value)? startDisplaying,
    TResult Function(_SingleHomeStateCleanState value)? cleanState,
    required TResult orElse(),
  }) {
    if (createSchedule != null) {
      return createSchedule(this);
    }
    return orElse();
  }
}

abstract class _SingleHomeCreateSchedule implements SingleHomeState {
  const factory _SingleHomeCreateSchedule() = _$_SingleHomeCreateSchedule;
}

/// @nodoc
abstract class _$SingleHomeStateStartDisplayingCopyWith<$Res> {
  factory _$SingleHomeStateStartDisplayingCopyWith(
          _SingleHomeStateStartDisplaying value,
          $Res Function(_SingleHomeStateStartDisplaying) then) =
      __$SingleHomeStateStartDisplayingCopyWithImpl<$Res>;
  $Res call({List<deviceDisplay> device, List<ScheduleEntity> schedules});
}

/// @nodoc
class __$SingleHomeStateStartDisplayingCopyWithImpl<$Res>
    extends _$SingleHomeStateCopyWithImpl<$Res>
    implements _$SingleHomeStateStartDisplayingCopyWith<$Res> {
  __$SingleHomeStateStartDisplayingCopyWithImpl(
      _SingleHomeStateStartDisplaying _value,
      $Res Function(_SingleHomeStateStartDisplaying) _then)
      : super(_value, (v) => _then(v as _SingleHomeStateStartDisplaying));

  @override
  _SingleHomeStateStartDisplaying get _value =>
      super._value as _SingleHomeStateStartDisplaying;

  @override
  $Res call({
    Object? device = freezed,
    Object? schedules = freezed,
  }) {
    return _then(_SingleHomeStateStartDisplaying(
      device: device == freezed
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as List<deviceDisplay>,
      schedules: schedules == freezed
          ? _value.schedules
          : schedules // ignore: cast_nullable_to_non_nullable
              as List<ScheduleEntity>,
    ));
  }
}

/// @nodoc

@Implements(Displaying)
class _$_SingleHomeStateStartDisplaying
    implements _SingleHomeStateStartDisplaying {
  const _$_SingleHomeStateStartDisplaying(
      {required this.device, required this.schedules});

  @override
  final List<deviceDisplay> device;
  @override
  final List<ScheduleEntity> schedules;

  @override
  String toString() {
    return 'SingleHomeState.startDisplaying(device: $device, schedules: $schedules)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SingleHomeStateStartDisplaying &&
            (identical(other.device, device) ||
                const DeepCollectionEquality().equals(other.device, device)) &&
            (identical(other.schedules, schedules) ||
                const DeepCollectionEquality()
                    .equals(other.schedules, schedules)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(device) ^
      const DeepCollectionEquality().hash(schedules);

  @JsonKey(ignore: true)
  @override
  _$SingleHomeStateStartDisplayingCopyWith<_SingleHomeStateStartDisplaying>
      get copyWith => __$SingleHomeStateStartDisplayingCopyWithImpl<
          _SingleHomeStateStartDisplaying>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() failure,
    required TResult Function() createSchedule,
    required TResult Function(
            List<deviceDisplay> device, List<ScheduleEntity> schedules)
        startDisplaying,
    required TResult Function() cleanState,
  }) {
    return startDisplaying(device, schedules);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? failure,
    TResult Function()? createSchedule,
    TResult Function(
            List<deviceDisplay> device, List<ScheduleEntity> schedules)?
        startDisplaying,
    TResult Function()? cleanState,
    required TResult orElse(),
  }) {
    if (startDisplaying != null) {
      return startDisplaying(device, schedules);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SingleHomeInitial value) initial,
    required TResult Function(_SingleHomeFailure value) failure,
    required TResult Function(_SingleHomeCreateSchedule value) createSchedule,
    required TResult Function(_SingleHomeStateStartDisplaying value)
        startDisplaying,
    required TResult Function(_SingleHomeStateCleanState value) cleanState,
  }) {
    return startDisplaying(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SingleHomeInitial value)? initial,
    TResult Function(_SingleHomeFailure value)? failure,
    TResult Function(_SingleHomeCreateSchedule value)? createSchedule,
    TResult Function(_SingleHomeStateStartDisplaying value)? startDisplaying,
    TResult Function(_SingleHomeStateCleanState value)? cleanState,
    required TResult orElse(),
  }) {
    if (startDisplaying != null) {
      return startDisplaying(this);
    }
    return orElse();
  }
}

abstract class _SingleHomeStateStartDisplaying
    implements SingleHomeState, Displaying {
  const factory _SingleHomeStateStartDisplaying(
          {required List<deviceDisplay> device,
          required List<ScheduleEntity> schedules}) =
      _$_SingleHomeStateStartDisplaying;

  List<deviceDisplay> get device => throw _privateConstructorUsedError;
  List<ScheduleEntity> get schedules => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SingleHomeStateStartDisplayingCopyWith<_SingleHomeStateStartDisplaying>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SingleHomeStateCleanStateCopyWith<$Res> {
  factory _$SingleHomeStateCleanStateCopyWith(_SingleHomeStateCleanState value,
          $Res Function(_SingleHomeStateCleanState) then) =
      __$SingleHomeStateCleanStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$SingleHomeStateCleanStateCopyWithImpl<$Res>
    extends _$SingleHomeStateCopyWithImpl<$Res>
    implements _$SingleHomeStateCleanStateCopyWith<$Res> {
  __$SingleHomeStateCleanStateCopyWithImpl(_SingleHomeStateCleanState _value,
      $Res Function(_SingleHomeStateCleanState) _then)
      : super(_value, (v) => _then(v as _SingleHomeStateCleanState));

  @override
  _SingleHomeStateCleanState get _value =>
      super._value as _SingleHomeStateCleanState;
}

/// @nodoc

class _$_SingleHomeStateCleanState implements _SingleHomeStateCleanState {
  const _$_SingleHomeStateCleanState();

  @override
  String toString() {
    return 'SingleHomeState.cleanState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SingleHomeStateCleanState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() failure,
    required TResult Function() createSchedule,
    required TResult Function(
            List<deviceDisplay> device, List<ScheduleEntity> schedules)
        startDisplaying,
    required TResult Function() cleanState,
  }) {
    return cleanState();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? failure,
    TResult Function()? createSchedule,
    TResult Function(
            List<deviceDisplay> device, List<ScheduleEntity> schedules)?
        startDisplaying,
    TResult Function()? cleanState,
    required TResult orElse(),
  }) {
    if (cleanState != null) {
      return cleanState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SingleHomeInitial value) initial,
    required TResult Function(_SingleHomeFailure value) failure,
    required TResult Function(_SingleHomeCreateSchedule value) createSchedule,
    required TResult Function(_SingleHomeStateStartDisplaying value)
        startDisplaying,
    required TResult Function(_SingleHomeStateCleanState value) cleanState,
  }) {
    return cleanState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SingleHomeInitial value)? initial,
    TResult Function(_SingleHomeFailure value)? failure,
    TResult Function(_SingleHomeCreateSchedule value)? createSchedule,
    TResult Function(_SingleHomeStateStartDisplaying value)? startDisplaying,
    TResult Function(_SingleHomeStateCleanState value)? cleanState,
    required TResult orElse(),
  }) {
    if (cleanState != null) {
      return cleanState(this);
    }
    return orElse();
  }
}

abstract class _SingleHomeStateCleanState implements SingleHomeState {
  const factory _SingleHomeStateCleanState() = _$_SingleHomeStateCleanState;
}

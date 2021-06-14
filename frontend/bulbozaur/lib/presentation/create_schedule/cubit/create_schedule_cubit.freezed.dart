// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'create_schedule_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CreateScheduleStateTearOff {
  const _$CreateScheduleStateTearOff();

  _CreateScheduleStateInitial initial() {
    return const _CreateScheduleStateInitial();
  }

  _CreateScheduleStateFailure failure() {
    return const _CreateScheduleStateFailure();
  }

  _CreateScheduleChoosedIcon choosedIcon({required int id}) {
    return _CreateScheduleChoosedIcon(
      id: id,
    );
  }

  _CreateScheduleStateChoosedTime choosedTime(
      {required int id,
      required String name,
      required String fromTime,
      required String toTime,
      required List<deviceDisplay> device}) {
    return _CreateScheduleStateChoosedTime(
      id: id,
      name: name,
      fromTime: fromTime,
      toTime: toTime,
      device: device,
    );
  }

  _CreateScheduleStateSuccess success() {
    return const _CreateScheduleStateSuccess();
  }
}

/// @nodoc
const $CreateScheduleState = _$CreateScheduleStateTearOff();

/// @nodoc
mixin _$CreateScheduleState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() failure,
    required TResult Function(int id) choosedIcon,
    required TResult Function(int id, String name, String fromTime,
            String toTime, List<deviceDisplay> device)
        choosedTime,
    required TResult Function() success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? failure,
    TResult Function(int id)? choosedIcon,
    TResult Function(int id, String name, String fromTime, String toTime,
            List<deviceDisplay> device)?
        choosedTime,
    TResult Function()? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateScheduleStateInitial value) initial,
    required TResult Function(_CreateScheduleStateFailure value) failure,
    required TResult Function(_CreateScheduleChoosedIcon value) choosedIcon,
    required TResult Function(_CreateScheduleStateChoosedTime value)
        choosedTime,
    required TResult Function(_CreateScheduleStateSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateScheduleStateInitial value)? initial,
    TResult Function(_CreateScheduleStateFailure value)? failure,
    TResult Function(_CreateScheduleChoosedIcon value)? choosedIcon,
    TResult Function(_CreateScheduleStateChoosedTime value)? choosedTime,
    TResult Function(_CreateScheduleStateSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateScheduleStateCopyWith<$Res> {
  factory $CreateScheduleStateCopyWith(
          CreateScheduleState value, $Res Function(CreateScheduleState) then) =
      _$CreateScheduleStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateScheduleStateCopyWithImpl<$Res>
    implements $CreateScheduleStateCopyWith<$Res> {
  _$CreateScheduleStateCopyWithImpl(this._value, this._then);

  final CreateScheduleState _value;
  // ignore: unused_field
  final $Res Function(CreateScheduleState) _then;
}

/// @nodoc
abstract class _$CreateScheduleStateInitialCopyWith<$Res> {
  factory _$CreateScheduleStateInitialCopyWith(
          _CreateScheduleStateInitial value,
          $Res Function(_CreateScheduleStateInitial) then) =
      __$CreateScheduleStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$CreateScheduleStateInitialCopyWithImpl<$Res>
    extends _$CreateScheduleStateCopyWithImpl<$Res>
    implements _$CreateScheduleStateInitialCopyWith<$Res> {
  __$CreateScheduleStateInitialCopyWithImpl(_CreateScheduleStateInitial _value,
      $Res Function(_CreateScheduleStateInitial) _then)
      : super(_value, (v) => _then(v as _CreateScheduleStateInitial));

  @override
  _CreateScheduleStateInitial get _value =>
      super._value as _CreateScheduleStateInitial;
}

/// @nodoc

class _$_CreateScheduleStateInitial implements _CreateScheduleStateInitial {
  const _$_CreateScheduleStateInitial();

  @override
  String toString() {
    return 'CreateScheduleState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CreateScheduleStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() failure,
    required TResult Function(int id) choosedIcon,
    required TResult Function(int id, String name, String fromTime,
            String toTime, List<deviceDisplay> device)
        choosedTime,
    required TResult Function() success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? failure,
    TResult Function(int id)? choosedIcon,
    TResult Function(int id, String name, String fromTime, String toTime,
            List<deviceDisplay> device)?
        choosedTime,
    TResult Function()? success,
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
    required TResult Function(_CreateScheduleStateInitial value) initial,
    required TResult Function(_CreateScheduleStateFailure value) failure,
    required TResult Function(_CreateScheduleChoosedIcon value) choosedIcon,
    required TResult Function(_CreateScheduleStateChoosedTime value)
        choosedTime,
    required TResult Function(_CreateScheduleStateSuccess value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateScheduleStateInitial value)? initial,
    TResult Function(_CreateScheduleStateFailure value)? failure,
    TResult Function(_CreateScheduleChoosedIcon value)? choosedIcon,
    TResult Function(_CreateScheduleStateChoosedTime value)? choosedTime,
    TResult Function(_CreateScheduleStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _CreateScheduleStateInitial implements CreateScheduleState {
  const factory _CreateScheduleStateInitial() = _$_CreateScheduleStateInitial;
}

/// @nodoc
abstract class _$CreateScheduleStateFailureCopyWith<$Res> {
  factory _$CreateScheduleStateFailureCopyWith(
          _CreateScheduleStateFailure value,
          $Res Function(_CreateScheduleStateFailure) then) =
      __$CreateScheduleStateFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$CreateScheduleStateFailureCopyWithImpl<$Res>
    extends _$CreateScheduleStateCopyWithImpl<$Res>
    implements _$CreateScheduleStateFailureCopyWith<$Res> {
  __$CreateScheduleStateFailureCopyWithImpl(_CreateScheduleStateFailure _value,
      $Res Function(_CreateScheduleStateFailure) _then)
      : super(_value, (v) => _then(v as _CreateScheduleStateFailure));

  @override
  _CreateScheduleStateFailure get _value =>
      super._value as _CreateScheduleStateFailure;
}

/// @nodoc

class _$_CreateScheduleStateFailure implements _CreateScheduleStateFailure {
  const _$_CreateScheduleStateFailure();

  @override
  String toString() {
    return 'CreateScheduleState.failure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CreateScheduleStateFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() failure,
    required TResult Function(int id) choosedIcon,
    required TResult Function(int id, String name, String fromTime,
            String toTime, List<deviceDisplay> device)
        choosedTime,
    required TResult Function() success,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? failure,
    TResult Function(int id)? choosedIcon,
    TResult Function(int id, String name, String fromTime, String toTime,
            List<deviceDisplay> device)?
        choosedTime,
    TResult Function()? success,
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
    required TResult Function(_CreateScheduleStateInitial value) initial,
    required TResult Function(_CreateScheduleStateFailure value) failure,
    required TResult Function(_CreateScheduleChoosedIcon value) choosedIcon,
    required TResult Function(_CreateScheduleStateChoosedTime value)
        choosedTime,
    required TResult Function(_CreateScheduleStateSuccess value) success,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateScheduleStateInitial value)? initial,
    TResult Function(_CreateScheduleStateFailure value)? failure,
    TResult Function(_CreateScheduleChoosedIcon value)? choosedIcon,
    TResult Function(_CreateScheduleStateChoosedTime value)? choosedTime,
    TResult Function(_CreateScheduleStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _CreateScheduleStateFailure implements CreateScheduleState {
  const factory _CreateScheduleStateFailure() = _$_CreateScheduleStateFailure;
}

/// @nodoc
abstract class _$CreateScheduleChoosedIconCopyWith<$Res> {
  factory _$CreateScheduleChoosedIconCopyWith(_CreateScheduleChoosedIcon value,
          $Res Function(_CreateScheduleChoosedIcon) then) =
      __$CreateScheduleChoosedIconCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class __$CreateScheduleChoosedIconCopyWithImpl<$Res>
    extends _$CreateScheduleStateCopyWithImpl<$Res>
    implements _$CreateScheduleChoosedIconCopyWith<$Res> {
  __$CreateScheduleChoosedIconCopyWithImpl(_CreateScheduleChoosedIcon _value,
      $Res Function(_CreateScheduleChoosedIcon) _then)
      : super(_value, (v) => _then(v as _CreateScheduleChoosedIcon));

  @override
  _CreateScheduleChoosedIcon get _value =>
      super._value as _CreateScheduleChoosedIcon;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_CreateScheduleChoosedIcon(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_CreateScheduleChoosedIcon implements _CreateScheduleChoosedIcon {
  const _$_CreateScheduleChoosedIcon({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'CreateScheduleState.choosedIcon(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreateScheduleChoosedIcon &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$CreateScheduleChoosedIconCopyWith<_CreateScheduleChoosedIcon>
      get copyWith =>
          __$CreateScheduleChoosedIconCopyWithImpl<_CreateScheduleChoosedIcon>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() failure,
    required TResult Function(int id) choosedIcon,
    required TResult Function(int id, String name, String fromTime,
            String toTime, List<deviceDisplay> device)
        choosedTime,
    required TResult Function() success,
  }) {
    return choosedIcon(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? failure,
    TResult Function(int id)? choosedIcon,
    TResult Function(int id, String name, String fromTime, String toTime,
            List<deviceDisplay> device)?
        choosedTime,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (choosedIcon != null) {
      return choosedIcon(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateScheduleStateInitial value) initial,
    required TResult Function(_CreateScheduleStateFailure value) failure,
    required TResult Function(_CreateScheduleChoosedIcon value) choosedIcon,
    required TResult Function(_CreateScheduleStateChoosedTime value)
        choosedTime,
    required TResult Function(_CreateScheduleStateSuccess value) success,
  }) {
    return choosedIcon(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateScheduleStateInitial value)? initial,
    TResult Function(_CreateScheduleStateFailure value)? failure,
    TResult Function(_CreateScheduleChoosedIcon value)? choosedIcon,
    TResult Function(_CreateScheduleStateChoosedTime value)? choosedTime,
    TResult Function(_CreateScheduleStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (choosedIcon != null) {
      return choosedIcon(this);
    }
    return orElse();
  }
}

abstract class _CreateScheduleChoosedIcon implements CreateScheduleState {
  const factory _CreateScheduleChoosedIcon({required int id}) =
      _$_CreateScheduleChoosedIcon;

  int get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CreateScheduleChoosedIconCopyWith<_CreateScheduleChoosedIcon>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CreateScheduleStateChoosedTimeCopyWith<$Res> {
  factory _$CreateScheduleStateChoosedTimeCopyWith(
          _CreateScheduleStateChoosedTime value,
          $Res Function(_CreateScheduleStateChoosedTime) then) =
      __$CreateScheduleStateChoosedTimeCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      String fromTime,
      String toTime,
      List<deviceDisplay> device});
}

/// @nodoc
class __$CreateScheduleStateChoosedTimeCopyWithImpl<$Res>
    extends _$CreateScheduleStateCopyWithImpl<$Res>
    implements _$CreateScheduleStateChoosedTimeCopyWith<$Res> {
  __$CreateScheduleStateChoosedTimeCopyWithImpl(
      _CreateScheduleStateChoosedTime _value,
      $Res Function(_CreateScheduleStateChoosedTime) _then)
      : super(_value, (v) => _then(v as _CreateScheduleStateChoosedTime));

  @override
  _CreateScheduleStateChoosedTime get _value =>
      super._value as _CreateScheduleStateChoosedTime;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? fromTime = freezed,
    Object? toTime = freezed,
    Object? device = freezed,
  }) {
    return _then(_CreateScheduleStateChoosedTime(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fromTime: fromTime == freezed
          ? _value.fromTime
          : fromTime // ignore: cast_nullable_to_non_nullable
              as String,
      toTime: toTime == freezed
          ? _value.toTime
          : toTime // ignore: cast_nullable_to_non_nullable
              as String,
      device: device == freezed
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as List<deviceDisplay>,
    ));
  }
}

/// @nodoc

class _$_CreateScheduleStateChoosedTime
    implements _CreateScheduleStateChoosedTime {
  const _$_CreateScheduleStateChoosedTime(
      {required this.id,
      required this.name,
      required this.fromTime,
      required this.toTime,
      required this.device});

  @override
  final int id;
  @override
  final String name;
  @override
  final String fromTime;
  @override
  final String toTime;
  @override
  final List<deviceDisplay> device;

  @override
  String toString() {
    return 'CreateScheduleState.choosedTime(id: $id, name: $name, fromTime: $fromTime, toTime: $toTime, device: $device)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreateScheduleStateChoosedTime &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.fromTime, fromTime) ||
                const DeepCollectionEquality()
                    .equals(other.fromTime, fromTime)) &&
            (identical(other.toTime, toTime) ||
                const DeepCollectionEquality().equals(other.toTime, toTime)) &&
            (identical(other.device, device) ||
                const DeepCollectionEquality().equals(other.device, device)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(fromTime) ^
      const DeepCollectionEquality().hash(toTime) ^
      const DeepCollectionEquality().hash(device);

  @JsonKey(ignore: true)
  @override
  _$CreateScheduleStateChoosedTimeCopyWith<_CreateScheduleStateChoosedTime>
      get copyWith => __$CreateScheduleStateChoosedTimeCopyWithImpl<
          _CreateScheduleStateChoosedTime>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() failure,
    required TResult Function(int id) choosedIcon,
    required TResult Function(int id, String name, String fromTime,
            String toTime, List<deviceDisplay> device)
        choosedTime,
    required TResult Function() success,
  }) {
    return choosedTime(id, name, fromTime, toTime, device);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? failure,
    TResult Function(int id)? choosedIcon,
    TResult Function(int id, String name, String fromTime, String toTime,
            List<deviceDisplay> device)?
        choosedTime,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (choosedTime != null) {
      return choosedTime(id, name, fromTime, toTime, device);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateScheduleStateInitial value) initial,
    required TResult Function(_CreateScheduleStateFailure value) failure,
    required TResult Function(_CreateScheduleChoosedIcon value) choosedIcon,
    required TResult Function(_CreateScheduleStateChoosedTime value)
        choosedTime,
    required TResult Function(_CreateScheduleStateSuccess value) success,
  }) {
    return choosedTime(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateScheduleStateInitial value)? initial,
    TResult Function(_CreateScheduleStateFailure value)? failure,
    TResult Function(_CreateScheduleChoosedIcon value)? choosedIcon,
    TResult Function(_CreateScheduleStateChoosedTime value)? choosedTime,
    TResult Function(_CreateScheduleStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (choosedTime != null) {
      return choosedTime(this);
    }
    return orElse();
  }
}

abstract class _CreateScheduleStateChoosedTime implements CreateScheduleState {
  const factory _CreateScheduleStateChoosedTime(
      {required int id,
      required String name,
      required String fromTime,
      required String toTime,
      required List<deviceDisplay> device}) = _$_CreateScheduleStateChoosedTime;

  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get fromTime => throw _privateConstructorUsedError;
  String get toTime => throw _privateConstructorUsedError;
  List<deviceDisplay> get device => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CreateScheduleStateChoosedTimeCopyWith<_CreateScheduleStateChoosedTime>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CreateScheduleStateSuccessCopyWith<$Res> {
  factory _$CreateScheduleStateSuccessCopyWith(
          _CreateScheduleStateSuccess value,
          $Res Function(_CreateScheduleStateSuccess) then) =
      __$CreateScheduleStateSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$CreateScheduleStateSuccessCopyWithImpl<$Res>
    extends _$CreateScheduleStateCopyWithImpl<$Res>
    implements _$CreateScheduleStateSuccessCopyWith<$Res> {
  __$CreateScheduleStateSuccessCopyWithImpl(_CreateScheduleStateSuccess _value,
      $Res Function(_CreateScheduleStateSuccess) _then)
      : super(_value, (v) => _then(v as _CreateScheduleStateSuccess));

  @override
  _CreateScheduleStateSuccess get _value =>
      super._value as _CreateScheduleStateSuccess;
}

/// @nodoc

class _$_CreateScheduleStateSuccess implements _CreateScheduleStateSuccess {
  const _$_CreateScheduleStateSuccess();

  @override
  String toString() {
    return 'CreateScheduleState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CreateScheduleStateSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() failure,
    required TResult Function(int id) choosedIcon,
    required TResult Function(int id, String name, String fromTime,
            String toTime, List<deviceDisplay> device)
        choosedTime,
    required TResult Function() success,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? failure,
    TResult Function(int id)? choosedIcon,
    TResult Function(int id, String name, String fromTime, String toTime,
            List<deviceDisplay> device)?
        choosedTime,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateScheduleStateInitial value) initial,
    required TResult Function(_CreateScheduleStateFailure value) failure,
    required TResult Function(_CreateScheduleChoosedIcon value) choosedIcon,
    required TResult Function(_CreateScheduleStateChoosedTime value)
        choosedTime,
    required TResult Function(_CreateScheduleStateSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateScheduleStateInitial value)? initial,
    TResult Function(_CreateScheduleStateFailure value)? failure,
    TResult Function(_CreateScheduleChoosedIcon value)? choosedIcon,
    TResult Function(_CreateScheduleStateChoosedTime value)? choosedTime,
    TResult Function(_CreateScheduleStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _CreateScheduleStateSuccess implements CreateScheduleState {
  const factory _CreateScheduleStateSuccess() = _$_CreateScheduleStateSuccess;
}

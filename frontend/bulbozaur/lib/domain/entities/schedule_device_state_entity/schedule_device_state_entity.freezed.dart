// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'schedule_device_state_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ScheduleDeviceStateEntity _$ScheduleDeviceStateEntityFromJson(
    Map<String, dynamic> json) {
  return _ScheduleDeviceStateEntity.fromJson(json);
}

/// @nodoc
class _$ScheduleDeviceStateEntityTearOff {
  const _$ScheduleDeviceStateEntityTearOff();

  _ScheduleDeviceStateEntity call(
      {required bool state,
      required int device,
      required int lightValue,
      required double stateValue}) {
    return _ScheduleDeviceStateEntity(
      state: state,
      device: device,
      lightValue: lightValue,
      stateValue: stateValue,
    );
  }

  ScheduleDeviceStateEntity fromJson(Map<String, Object> json) {
    return ScheduleDeviceStateEntity.fromJson(json);
  }
}

/// @nodoc
const $ScheduleDeviceStateEntity = _$ScheduleDeviceStateEntityTearOff();

/// @nodoc
mixin _$ScheduleDeviceStateEntity {
  bool get state => throw _privateConstructorUsedError;
  int get device => throw _privateConstructorUsedError;
  int get lightValue => throw _privateConstructorUsedError;
  double get stateValue => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScheduleDeviceStateEntityCopyWith<ScheduleDeviceStateEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleDeviceStateEntityCopyWith<$Res> {
  factory $ScheduleDeviceStateEntityCopyWith(ScheduleDeviceStateEntity value,
          $Res Function(ScheduleDeviceStateEntity) then) =
      _$ScheduleDeviceStateEntityCopyWithImpl<$Res>;
  $Res call({bool state, int device, int lightValue, double stateValue});
}

/// @nodoc
class _$ScheduleDeviceStateEntityCopyWithImpl<$Res>
    implements $ScheduleDeviceStateEntityCopyWith<$Res> {
  _$ScheduleDeviceStateEntityCopyWithImpl(this._value, this._then);

  final ScheduleDeviceStateEntity _value;
  // ignore: unused_field
  final $Res Function(ScheduleDeviceStateEntity) _then;

  @override
  $Res call({
    Object? state = freezed,
    Object? device = freezed,
    Object? lightValue = freezed,
    Object? stateValue = freezed,
  }) {
    return _then(_value.copyWith(
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as bool,
      device: device == freezed
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as int,
      lightValue: lightValue == freezed
          ? _value.lightValue
          : lightValue // ignore: cast_nullable_to_non_nullable
              as int,
      stateValue: stateValue == freezed
          ? _value.stateValue
          : stateValue // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$ScheduleDeviceStateEntityCopyWith<$Res>
    implements $ScheduleDeviceStateEntityCopyWith<$Res> {
  factory _$ScheduleDeviceStateEntityCopyWith(_ScheduleDeviceStateEntity value,
          $Res Function(_ScheduleDeviceStateEntity) then) =
      __$ScheduleDeviceStateEntityCopyWithImpl<$Res>;
  @override
  $Res call({bool state, int device, int lightValue, double stateValue});
}

/// @nodoc
class __$ScheduleDeviceStateEntityCopyWithImpl<$Res>
    extends _$ScheduleDeviceStateEntityCopyWithImpl<$Res>
    implements _$ScheduleDeviceStateEntityCopyWith<$Res> {
  __$ScheduleDeviceStateEntityCopyWithImpl(_ScheduleDeviceStateEntity _value,
      $Res Function(_ScheduleDeviceStateEntity) _then)
      : super(_value, (v) => _then(v as _ScheduleDeviceStateEntity));

  @override
  _ScheduleDeviceStateEntity get _value =>
      super._value as _ScheduleDeviceStateEntity;

  @override
  $Res call({
    Object? state = freezed,
    Object? device = freezed,
    Object? lightValue = freezed,
    Object? stateValue = freezed,
  }) {
    return _then(_ScheduleDeviceStateEntity(
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as bool,
      device: device == freezed
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as int,
      lightValue: lightValue == freezed
          ? _value.lightValue
          : lightValue // ignore: cast_nullable_to_non_nullable
              as int,
      stateValue: stateValue == freezed
          ? _value.stateValue
          : stateValue // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ScheduleDeviceStateEntity implements _ScheduleDeviceStateEntity {
  _$_ScheduleDeviceStateEntity(
      {required this.state,
      required this.device,
      required this.lightValue,
      required this.stateValue});

  factory _$_ScheduleDeviceStateEntity.fromJson(Map<String, dynamic> json) =>
      _$_$_ScheduleDeviceStateEntityFromJson(json);

  @override
  final bool state;
  @override
  final int device;
  @override
  final int lightValue;
  @override
  final double stateValue;

  @override
  String toString() {
    return 'ScheduleDeviceStateEntity(state: $state, device: $device, lightValue: $lightValue, stateValue: $stateValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ScheduleDeviceStateEntity &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.device, device) ||
                const DeepCollectionEquality().equals(other.device, device)) &&
            (identical(other.lightValue, lightValue) ||
                const DeepCollectionEquality()
                    .equals(other.lightValue, lightValue)) &&
            (identical(other.stateValue, stateValue) ||
                const DeepCollectionEquality()
                    .equals(other.stateValue, stateValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(device) ^
      const DeepCollectionEquality().hash(lightValue) ^
      const DeepCollectionEquality().hash(stateValue);

  @JsonKey(ignore: true)
  @override
  _$ScheduleDeviceStateEntityCopyWith<_ScheduleDeviceStateEntity>
      get copyWith =>
          __$ScheduleDeviceStateEntityCopyWithImpl<_ScheduleDeviceStateEntity>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ScheduleDeviceStateEntityToJson(this);
  }
}

abstract class _ScheduleDeviceStateEntity implements ScheduleDeviceStateEntity {
  factory _ScheduleDeviceStateEntity(
      {required bool state,
      required int device,
      required int lightValue,
      required double stateValue}) = _$_ScheduleDeviceStateEntity;

  factory _ScheduleDeviceStateEntity.fromJson(Map<String, dynamic> json) =
      _$_ScheduleDeviceStateEntity.fromJson;

  @override
  bool get state => throw _privateConstructorUsedError;
  @override
  int get device => throw _privateConstructorUsedError;
  @override
  int get lightValue => throw _privateConstructorUsedError;
  @override
  double get stateValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ScheduleDeviceStateEntityCopyWith<_ScheduleDeviceStateEntity>
      get copyWith => throw _privateConstructorUsedError;
}

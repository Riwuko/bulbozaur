// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'devices_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeviceEntity _$DeviceEntityFromJson(Map<String, dynamic> json) {
  return _DeviceEntity.fromJson(json);
}

/// @nodoc
class _$DeviceEntityTearOff {
  const _$DeviceEntityTearOff();

  _DeviceEntity call(
      {required String name,
      required String id,
      required String stateValue,
      required bool state}) {
    return _DeviceEntity(
      name: name,
      id: id,
      stateValue: stateValue,
      state: state,
    );
  }

  DeviceEntity fromJson(Map<String, Object> json) {
    return DeviceEntity.fromJson(json);
  }
}

/// @nodoc
const $DeviceEntity = _$DeviceEntityTearOff();

/// @nodoc
mixin _$DeviceEntity {
  String get name => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get stateValue => throw _privateConstructorUsedError;
  bool get state => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceEntityCopyWith<DeviceEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceEntityCopyWith<$Res> {
  factory $DeviceEntityCopyWith(
          DeviceEntity value, $Res Function(DeviceEntity) then) =
      _$DeviceEntityCopyWithImpl<$Res>;
  $Res call({String name, String id, String stateValue, bool state});
}

/// @nodoc
class _$DeviceEntityCopyWithImpl<$Res> implements $DeviceEntityCopyWith<$Res> {
  _$DeviceEntityCopyWithImpl(this._value, this._then);

  final DeviceEntity _value;
  // ignore: unused_field
  final $Res Function(DeviceEntity) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
    Object? stateValue = freezed,
    Object? state = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      stateValue: stateValue == freezed
          ? _value.stateValue
          : stateValue // ignore: cast_nullable_to_non_nullable
              as String,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$DeviceEntityCopyWith<$Res>
    implements $DeviceEntityCopyWith<$Res> {
  factory _$DeviceEntityCopyWith(
          _DeviceEntity value, $Res Function(_DeviceEntity) then) =
      __$DeviceEntityCopyWithImpl<$Res>;
  @override
  $Res call({String name, String id, String stateValue, bool state});
}

/// @nodoc
class __$DeviceEntityCopyWithImpl<$Res> extends _$DeviceEntityCopyWithImpl<$Res>
    implements _$DeviceEntityCopyWith<$Res> {
  __$DeviceEntityCopyWithImpl(
      _DeviceEntity _value, $Res Function(_DeviceEntity) _then)
      : super(_value, (v) => _then(v as _DeviceEntity));

  @override
  _DeviceEntity get _value => super._value as _DeviceEntity;

  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
    Object? stateValue = freezed,
    Object? state = freezed,
  }) {
    return _then(_DeviceEntity(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      stateValue: stateValue == freezed
          ? _value.stateValue
          : stateValue // ignore: cast_nullable_to_non_nullable
              as String,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeviceEntity implements _DeviceEntity {
  _$_DeviceEntity(
      {required this.name,
      required this.id,
      required this.stateValue,
      required this.state});

  factory _$_DeviceEntity.fromJson(Map<String, dynamic> json) =>
      _$_$_DeviceEntityFromJson(json);

  @override
  final String name;
  @override
  final String id;
  @override
  final String stateValue;
  @override
  final bool state;

  @override
  String toString() {
    return 'DeviceEntity(name: $name, id: $id, stateValue: $stateValue, state: $state)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeviceEntity &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.stateValue, stateValue) ||
                const DeepCollectionEquality()
                    .equals(other.stateValue, stateValue)) &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(stateValue) ^
      const DeepCollectionEquality().hash(state);

  @JsonKey(ignore: true)
  @override
  _$DeviceEntityCopyWith<_DeviceEntity> get copyWith =>
      __$DeviceEntityCopyWithImpl<_DeviceEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DeviceEntityToJson(this);
  }
}

abstract class _DeviceEntity implements DeviceEntity {
  factory _DeviceEntity(
      {required String name,
      required String id,
      required String stateValue,
      required bool state}) = _$_DeviceEntity;

  factory _DeviceEntity.fromJson(Map<String, dynamic> json) =
      _$_DeviceEntity.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get stateValue => throw _privateConstructorUsedError;
  @override
  bool get state => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DeviceEntityCopyWith<_DeviceEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

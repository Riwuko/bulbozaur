// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'schedule_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ScheduleEntityTearOff {
  const _$ScheduleEntityTearOff();

  _ScheduleEntity call({required String name, required int id}) {
    return _ScheduleEntity(
      name: name,
      id: id,
    );
  }
}

/// @nodoc
const $ScheduleEntity = _$ScheduleEntityTearOff();

/// @nodoc
mixin _$ScheduleEntity {
  String get name => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScheduleEntityCopyWith<ScheduleEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleEntityCopyWith<$Res> {
  factory $ScheduleEntityCopyWith(
          ScheduleEntity value, $Res Function(ScheduleEntity) then) =
      _$ScheduleEntityCopyWithImpl<$Res>;
  $Res call({String name, int id});
}

/// @nodoc
class _$ScheduleEntityCopyWithImpl<$Res>
    implements $ScheduleEntityCopyWith<$Res> {
  _$ScheduleEntityCopyWithImpl(this._value, this._then);

  final ScheduleEntity _value;
  // ignore: unused_field
  final $Res Function(ScheduleEntity) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$ScheduleEntityCopyWith<$Res>
    implements $ScheduleEntityCopyWith<$Res> {
  factory _$ScheduleEntityCopyWith(
          _ScheduleEntity value, $Res Function(_ScheduleEntity) then) =
      __$ScheduleEntityCopyWithImpl<$Res>;
  @override
  $Res call({String name, int id});
}

/// @nodoc
class __$ScheduleEntityCopyWithImpl<$Res>
    extends _$ScheduleEntityCopyWithImpl<$Res>
    implements _$ScheduleEntityCopyWith<$Res> {
  __$ScheduleEntityCopyWithImpl(
      _ScheduleEntity _value, $Res Function(_ScheduleEntity) _then)
      : super(_value, (v) => _then(v as _ScheduleEntity));

  @override
  _ScheduleEntity get _value => super._value as _ScheduleEntity;

  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
  }) {
    return _then(_ScheduleEntity(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ScheduleEntity implements _ScheduleEntity {
  const _$_ScheduleEntity({required this.name, required this.id});

  @override
  final String name;
  @override
  final int id;

  @override
  String toString() {
    return 'ScheduleEntity(name: $name, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ScheduleEntity &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$ScheduleEntityCopyWith<_ScheduleEntity> get copyWith =>
      __$ScheduleEntityCopyWithImpl<_ScheduleEntity>(this, _$identity);
}

abstract class _ScheduleEntity implements ScheduleEntity {
  const factory _ScheduleEntity({required String name, required int id}) =
      _$_ScheduleEntity;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ScheduleEntityCopyWith<_ScheduleEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

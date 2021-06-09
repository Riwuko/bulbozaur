// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'buildings_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BuildingsEntity _$BuildingsEntityFromJson(Map<String, dynamic> json) {
  return _BuildingsEntity.fromJson(json);
}

/// @nodoc
class _$BuildingsEntityTearOff {
  const _$BuildingsEntityTearOff();

  _BuildingsEntity call({required String name, required String id}) {
    return _BuildingsEntity(
      name: name,
      id: id,
    );
  }

  BuildingsEntity fromJson(Map<String, Object> json) {
    return BuildingsEntity.fromJson(json);
  }
}

/// @nodoc
const $BuildingsEntity = _$BuildingsEntityTearOff();

/// @nodoc
mixin _$BuildingsEntity {
  String get name => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BuildingsEntityCopyWith<BuildingsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BuildingsEntityCopyWith<$Res> {
  factory $BuildingsEntityCopyWith(
          BuildingsEntity value, $Res Function(BuildingsEntity) then) =
      _$BuildingsEntityCopyWithImpl<$Res>;
  $Res call({String name, String id});
}

/// @nodoc
class _$BuildingsEntityCopyWithImpl<$Res>
    implements $BuildingsEntityCopyWith<$Res> {
  _$BuildingsEntityCopyWithImpl(this._value, this._then);

  final BuildingsEntity _value;
  // ignore: unused_field
  final $Res Function(BuildingsEntity) _then;

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
              as String,
    ));
  }
}

/// @nodoc
abstract class _$BuildingsEntityCopyWith<$Res>
    implements $BuildingsEntityCopyWith<$Res> {
  factory _$BuildingsEntityCopyWith(
          _BuildingsEntity value, $Res Function(_BuildingsEntity) then) =
      __$BuildingsEntityCopyWithImpl<$Res>;
  @override
  $Res call({String name, String id});
}

/// @nodoc
class __$BuildingsEntityCopyWithImpl<$Res>
    extends _$BuildingsEntityCopyWithImpl<$Res>
    implements _$BuildingsEntityCopyWith<$Res> {
  __$BuildingsEntityCopyWithImpl(
      _BuildingsEntity _value, $Res Function(_BuildingsEntity) _then)
      : super(_value, (v) => _then(v as _BuildingsEntity));

  @override
  _BuildingsEntity get _value => super._value as _BuildingsEntity;

  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
  }) {
    return _then(_BuildingsEntity(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BuildingsEntity implements _BuildingsEntity {
  _$_BuildingsEntity({required this.name, required this.id});

  factory _$_BuildingsEntity.fromJson(Map<String, dynamic> json) =>
      _$_$_BuildingsEntityFromJson(json);

  @override
  final String name;
  @override
  final String id;

  @override
  String toString() {
    return 'BuildingsEntity(name: $name, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BuildingsEntity &&
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
  _$BuildingsEntityCopyWith<_BuildingsEntity> get copyWith =>
      __$BuildingsEntityCopyWithImpl<_BuildingsEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BuildingsEntityToJson(this);
  }
}

abstract class _BuildingsEntity implements BuildingsEntity {
  factory _BuildingsEntity({required String name, required String id}) =
      _$_BuildingsEntity;

  factory _BuildingsEntity.fromJson(Map<String, dynamic> json) =
      _$_BuildingsEntity.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BuildingsEntityCopyWith<_BuildingsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

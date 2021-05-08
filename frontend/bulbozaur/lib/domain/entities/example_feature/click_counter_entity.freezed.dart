// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'click_counter_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ClickCounterEntityTearOff {
  const _$ClickCounterEntityTearOff();

  _ClickCounterEntity call({required int count}) {
    return _ClickCounterEntity(
      count: count,
    );
  }
}

/// @nodoc
const $ClickCounterEntity = _$ClickCounterEntityTearOff();

/// @nodoc
mixin _$ClickCounterEntity {
  int get count => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClickCounterEntityCopyWith<ClickCounterEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClickCounterEntityCopyWith<$Res> {
  factory $ClickCounterEntityCopyWith(
          ClickCounterEntity value, $Res Function(ClickCounterEntity) then) =
      _$ClickCounterEntityCopyWithImpl<$Res>;
  $Res call({int count});
}

/// @nodoc
class _$ClickCounterEntityCopyWithImpl<$Res>
    implements $ClickCounterEntityCopyWith<$Res> {
  _$ClickCounterEntityCopyWithImpl(this._value, this._then);

  final ClickCounterEntity _value;
  // ignore: unused_field
  final $Res Function(ClickCounterEntity) _then;

  @override
  $Res call({
    Object? count = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$ClickCounterEntityCopyWith<$Res>
    implements $ClickCounterEntityCopyWith<$Res> {
  factory _$ClickCounterEntityCopyWith(
          _ClickCounterEntity value, $Res Function(_ClickCounterEntity) then) =
      __$ClickCounterEntityCopyWithImpl<$Res>;
  @override
  $Res call({int count});
}

/// @nodoc
class __$ClickCounterEntityCopyWithImpl<$Res>
    extends _$ClickCounterEntityCopyWithImpl<$Res>
    implements _$ClickCounterEntityCopyWith<$Res> {
  __$ClickCounterEntityCopyWithImpl(
      _ClickCounterEntity _value, $Res Function(_ClickCounterEntity) _then)
      : super(_value, (v) => _then(v as _ClickCounterEntity));

  @override
  _ClickCounterEntity get _value => super._value as _ClickCounterEntity;

  @override
  $Res call({
    Object? count = freezed,
  }) {
    return _then(_ClickCounterEntity(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ClickCounterEntity implements _ClickCounterEntity {
  const _$_ClickCounterEntity({required this.count});

  @override
  final int count;

  @override
  String toString() {
    return 'ClickCounterEntity(count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ClickCounterEntity &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(count);

  @JsonKey(ignore: true)
  @override
  _$ClickCounterEntityCopyWith<_ClickCounterEntity> get copyWith =>
      __$ClickCounterEntityCopyWithImpl<_ClickCounterEntity>(this, _$identity);
}

abstract class _ClickCounterEntity implements ClickCounterEntity {
  const factory _ClickCounterEntity({required int count}) =
      _$_ClickCounterEntity;

  @override
  int get count => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ClickCounterEntityCopyWith<_ClickCounterEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

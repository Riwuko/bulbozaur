// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'click_counter_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ClickCounterModel _$ClickCounterModelFromJson(Map<String, dynamic> json) {
  return _ClickCounterModel.fromJson(json);
}

/// @nodoc
class _$ClickCounterModelTearOff {
  const _$ClickCounterModelTearOff();

  _ClickCounterModel call({@HiveField(0) @JsonKey(name: 'count') int? count}) {
    return _ClickCounterModel(
      count: count,
    );
  }

  ClickCounterModel fromJson(Map<String, Object> json) {
    return ClickCounterModel.fromJson(json);
  }
}

/// @nodoc
const $ClickCounterModel = _$ClickCounterModelTearOff();

/// @nodoc
mixin _$ClickCounterModel {
  @HiveField(0)
  @JsonKey(name: 'count')
  int? get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClickCounterModelCopyWith<ClickCounterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClickCounterModelCopyWith<$Res> {
  factory $ClickCounterModelCopyWith(
          ClickCounterModel value, $Res Function(ClickCounterModel) then) =
      _$ClickCounterModelCopyWithImpl<$Res>;
  $Res call({@HiveField(0) @JsonKey(name: 'count') int? count});
}

/// @nodoc
class _$ClickCounterModelCopyWithImpl<$Res>
    implements $ClickCounterModelCopyWith<$Res> {
  _$ClickCounterModelCopyWithImpl(this._value, this._then);

  final ClickCounterModel _value;
  // ignore: unused_field
  final $Res Function(ClickCounterModel) _then;

  @override
  $Res call({
    Object? count = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$ClickCounterModelCopyWith<$Res>
    implements $ClickCounterModelCopyWith<$Res> {
  factory _$ClickCounterModelCopyWith(
          _ClickCounterModel value, $Res Function(_ClickCounterModel) then) =
      __$ClickCounterModelCopyWithImpl<$Res>;
  @override
  $Res call({@HiveField(0) @JsonKey(name: 'count') int? count});
}

/// @nodoc
class __$ClickCounterModelCopyWithImpl<$Res>
    extends _$ClickCounterModelCopyWithImpl<$Res>
    implements _$ClickCounterModelCopyWith<$Res> {
  __$ClickCounterModelCopyWithImpl(
      _ClickCounterModel _value, $Res Function(_ClickCounterModel) _then)
      : super(_value, (v) => _then(v as _ClickCounterModel));

  @override
  _ClickCounterModel get _value => super._value as _ClickCounterModel;

  @override
  $Res call({
    Object? count = freezed,
  }) {
    return _then(_ClickCounterModel(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ClickCounterModel implements _ClickCounterModel {
  const _$_ClickCounterModel(
      {@HiveField(0) @JsonKey(name: 'count') this.count});

  factory _$_ClickCounterModel.fromJson(Map<String, dynamic> json) =>
      _$_$_ClickCounterModelFromJson(json);

  @override
  @HiveField(0)
  @JsonKey(name: 'count')
  final int? count;

  @override
  String toString() {
    return 'ClickCounterModel(count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ClickCounterModel &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(count);

  @JsonKey(ignore: true)
  @override
  _$ClickCounterModelCopyWith<_ClickCounterModel> get copyWith =>
      __$ClickCounterModelCopyWithImpl<_ClickCounterModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ClickCounterModelToJson(this);
  }
}

abstract class _ClickCounterModel implements ClickCounterModel {
  const factory _ClickCounterModel(
          {@HiveField(0) @JsonKey(name: 'count') int? count}) =
      _$_ClickCounterModel;

  factory _ClickCounterModel.fromJson(Map<String, dynamic> json) =
      _$_ClickCounterModel.fromJson;

  @override
  @HiveField(0)
  @JsonKey(name: 'count')
  int? get count => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ClickCounterModelCopyWith<_ClickCounterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

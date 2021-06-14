// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'measurement_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MeasurementEntity _$MeasurementEntityFromJson(Map<String, dynamic> json) {
  return _MeasurementEntity.fromJson(json);
}

/// @nodoc
class _$MeasurementEntityTearOff {
  const _$MeasurementEntityTearOff();

  _MeasurementEntity call(
      {required String measureParameter,
      required double measureValue,
      required String measureDate}) {
    return _MeasurementEntity(
      measureParameter: measureParameter,
      measureValue: measureValue,
      measureDate: measureDate,
    );
  }

  MeasurementEntity fromJson(Map<String, Object> json) {
    return MeasurementEntity.fromJson(json);
  }
}

/// @nodoc
const $MeasurementEntity = _$MeasurementEntityTearOff();

/// @nodoc
mixin _$MeasurementEntity {
  String get measureParameter => throw _privateConstructorUsedError;
  double get measureValue => throw _privateConstructorUsedError;
  String get measureDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MeasurementEntityCopyWith<MeasurementEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeasurementEntityCopyWith<$Res> {
  factory $MeasurementEntityCopyWith(
          MeasurementEntity value, $Res Function(MeasurementEntity) then) =
      _$MeasurementEntityCopyWithImpl<$Res>;
  $Res call({String measureParameter, double measureValue, String measureDate});
}

/// @nodoc
class _$MeasurementEntityCopyWithImpl<$Res>
    implements $MeasurementEntityCopyWith<$Res> {
  _$MeasurementEntityCopyWithImpl(this._value, this._then);

  final MeasurementEntity _value;
  // ignore: unused_field
  final $Res Function(MeasurementEntity) _then;

  @override
  $Res call({
    Object? measureParameter = freezed,
    Object? measureValue = freezed,
    Object? measureDate = freezed,
  }) {
    return _then(_value.copyWith(
      measureParameter: measureParameter == freezed
          ? _value.measureParameter
          : measureParameter // ignore: cast_nullable_to_non_nullable
              as String,
      measureValue: measureValue == freezed
          ? _value.measureValue
          : measureValue // ignore: cast_nullable_to_non_nullable
              as double,
      measureDate: measureDate == freezed
          ? _value.measureDate
          : measureDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$MeasurementEntityCopyWith<$Res>
    implements $MeasurementEntityCopyWith<$Res> {
  factory _$MeasurementEntityCopyWith(
          _MeasurementEntity value, $Res Function(_MeasurementEntity) then) =
      __$MeasurementEntityCopyWithImpl<$Res>;
  @override
  $Res call({String measureParameter, double measureValue, String measureDate});
}

/// @nodoc
class __$MeasurementEntityCopyWithImpl<$Res>
    extends _$MeasurementEntityCopyWithImpl<$Res>
    implements _$MeasurementEntityCopyWith<$Res> {
  __$MeasurementEntityCopyWithImpl(
      _MeasurementEntity _value, $Res Function(_MeasurementEntity) _then)
      : super(_value, (v) => _then(v as _MeasurementEntity));

  @override
  _MeasurementEntity get _value => super._value as _MeasurementEntity;

  @override
  $Res call({
    Object? measureParameter = freezed,
    Object? measureValue = freezed,
    Object? measureDate = freezed,
  }) {
    return _then(_MeasurementEntity(
      measureParameter: measureParameter == freezed
          ? _value.measureParameter
          : measureParameter // ignore: cast_nullable_to_non_nullable
              as String,
      measureValue: measureValue == freezed
          ? _value.measureValue
          : measureValue // ignore: cast_nullable_to_non_nullable
              as double,
      measureDate: measureDate == freezed
          ? _value.measureDate
          : measureDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MeasurementEntity implements _MeasurementEntity {
  _$_MeasurementEntity(
      {required this.measureParameter,
      required this.measureValue,
      required this.measureDate});

  factory _$_MeasurementEntity.fromJson(Map<String, dynamic> json) =>
      _$_$_MeasurementEntityFromJson(json);

  @override
  final String measureParameter;
  @override
  final double measureValue;
  @override
  final String measureDate;

  @override
  String toString() {
    return 'MeasurementEntity(measureParameter: $measureParameter, measureValue: $measureValue, measureDate: $measureDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MeasurementEntity &&
            (identical(other.measureParameter, measureParameter) ||
                const DeepCollectionEquality()
                    .equals(other.measureParameter, measureParameter)) &&
            (identical(other.measureValue, measureValue) ||
                const DeepCollectionEquality()
                    .equals(other.measureValue, measureValue)) &&
            (identical(other.measureDate, measureDate) ||
                const DeepCollectionEquality()
                    .equals(other.measureDate, measureDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(measureParameter) ^
      const DeepCollectionEquality().hash(measureValue) ^
      const DeepCollectionEquality().hash(measureDate);

  @JsonKey(ignore: true)
  @override
  _$MeasurementEntityCopyWith<_MeasurementEntity> get copyWith =>
      __$MeasurementEntityCopyWithImpl<_MeasurementEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MeasurementEntityToJson(this);
  }
}

abstract class _MeasurementEntity implements MeasurementEntity {
  factory _MeasurementEntity(
      {required String measureParameter,
      required double measureValue,
      required String measureDate}) = _$_MeasurementEntity;

  factory _MeasurementEntity.fromJson(Map<String, dynamic> json) =
      _$_MeasurementEntity.fromJson;

  @override
  String get measureParameter => throw _privateConstructorUsedError;
  @override
  double get measureValue => throw _privateConstructorUsedError;
  @override
  String get measureDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MeasurementEntityCopyWith<_MeasurementEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'measurement_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MeasurementEntity _$_$_MeasurementEntityFromJson(Map<String, dynamic> json) {
  return _$_MeasurementEntity(
    measureParameter: json['measureParameter'] as String,
    measureValue: (json['measureValue'] as num).toDouble(),
    measureDate: json['measureDate'] as String,
  );
}

Map<String, dynamic> _$_$_MeasurementEntityToJson(
        _$_MeasurementEntity instance) =>
    <String, dynamic>{
      'measureParameter': instance.measureParameter,
      'measureValue': instance.measureValue,
      'measureDate': instance.measureDate,
    };

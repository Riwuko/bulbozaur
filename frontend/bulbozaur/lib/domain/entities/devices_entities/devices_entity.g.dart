// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'devices_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DeviceEntity _$_$_DeviceEntityFromJson(Map<String, dynamic> json) {
  return _$_DeviceEntity(
    name: json['name'] as String,
    id: json['id'] as String,
    stateValue: json['stateValue'] as String,
    state: json['state'] as bool,
  );
}

Map<String, dynamic> _$_$_DeviceEntityToJson(_$_DeviceEntity instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'stateValue': instance.stateValue,
      'state': instance.state,
    };
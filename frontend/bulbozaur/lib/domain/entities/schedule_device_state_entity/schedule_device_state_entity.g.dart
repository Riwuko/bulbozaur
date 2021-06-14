// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_device_state_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ScheduleDeviceStateEntity _$_$_ScheduleDeviceStateEntityFromJson(
    Map<String, dynamic> json) {
  return _$_ScheduleDeviceStateEntity(
    state: json['state'] as bool,
    device: json['device'] as int,
    lightLevel: json['lightLevel'] as int,
    stateValue: (json['stateValue'] as num).toDouble(),
    icon: json['icon'] as int,
  );
}

Map<String, dynamic> _$_$_ScheduleDeviceStateEntityToJson(
        _$_ScheduleDeviceStateEntity instance) =>
    <String, dynamic>{
      'state': instance.state,
      'device': instance.device,
      'lightLevel': instance.lightLevel,
      'stateValue': instance.stateValue,
      'icon': instance.icon,
    };

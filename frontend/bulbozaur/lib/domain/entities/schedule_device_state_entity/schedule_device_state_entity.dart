import 'dart:ffi';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'schedule_device_state_entity.freezed.dart';
part 'schedule_device_state_entity.g.dart';

@freezed
class ScheduleDeviceStateEntity with _$ScheduleDeviceStateEntity {
  factory ScheduleDeviceStateEntity({
    required bool state,
    required int device,
    required int lightLevel,
    required double stateValue,
    required int icon,
  }) = _ScheduleDeviceStateEntity;

  factory ScheduleDeviceStateEntity.fromJson(Map<String, dynamic> json) =>
      _$ScheduleDeviceStateEntityFromJson(json);
}

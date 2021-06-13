import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:project_skeleton/domain/entities/schedule_device_state_entity/schedule_device_state_entity.dart';

part 'schedule_entity.freezed.dart';
part 'schedule_entity.g.dart';

@freezed
class ScheduleEntity with _$ScheduleEntity {
  factory ScheduleEntity({
    required String name,
    required String id,
    required int icon,
    // @JsonKey(name: 'scheduleDevicesStates')
    //     List<ScheduleDeviceStateEntity> state
  }) = _ScheduleEntity;

  factory ScheduleEntity.fromJson(Map<String, dynamic> json) =>
      _$ScheduleEntityFromJson(json);
}

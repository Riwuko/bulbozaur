import 'package:freezed_annotation/freezed_annotation.dart';

part 'schedule_entity.freezed.dart';

@freezed
class ScheduleEntity with _$ScheduleEntity {
  const factory ScheduleEntity({
    required String name,
    required int id,
  }) = _ScheduleEntity;
}

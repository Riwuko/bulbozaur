part of 'create_schedule_cubit.dart';

@freezed
class CreateScheduleState with _$CreateScheduleState {
  const factory CreateScheduleState.initial() = _CreateScheduleStateInitial;

  const factory CreateScheduleState.failure() = _CreateScheduleStateFailure;

  const factory CreateScheduleState.choosedIcon({required int id}) =
      _CreateScheduleChoosedIcon;
}

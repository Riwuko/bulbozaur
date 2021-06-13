part of 'single_home_cubit.dart';

@freezed
class SingleHomeState with _$SingleHomeState {
  const factory SingleHomeState.initial() = _SingleHomeInitial;

  const factory SingleHomeState.failure() = _SingleHomeFailure;

  const factory SingleHomeState.createSchedule() = _SingleHomeCreateSchedule;
  @Implements(Displaying)
  const factory SingleHomeState.startDisplaying(
          {required List<deviceDisplay> device,
          required List<ScheduleEntity> schedules}) =
      _SingleHomeStateStartDisplaying;
  const factory SingleHomeState.cleanState() = _SingleHomeStateCleanState;
}

abstract class Displaying {}

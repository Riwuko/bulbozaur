part of 'choose_home_cubit.dart';

@freezed
class ChooseHomeState with _$ChooseHomeState {
  const factory ChooseHomeState.initial() = _ChooseHomeStateInitial;
  @Implements(BuildingState)
  const factory ChooseHomeState.buildings(
      {required List<BuildingsEntity> buildings}) = _ChooseHomeStateBuildings;
  @Implements(FailureState)
  const factory ChooseHomeState.failure() = _ChooseHomeStateFailure;

  const factory ChooseHomeState.goToTheSingleRoom({required int index}) =
      _ChooseHomeStateGoToTheSingleRoom;
}

abstract class BuildingState {}

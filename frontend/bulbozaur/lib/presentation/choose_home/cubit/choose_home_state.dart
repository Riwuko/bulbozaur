part of 'choose_home_cubit.dart';

@freezed
class ChooseHomeState with _$ChooseHomeState {
  const factory ChooseHomeState.initial() = _ChooseHomeStateInitial;

  const factory ChooseHomeState.buildings() = _ChooseHomeStateBuildings;

  const factory ChooseHomeState.failure() = _ChooseHomeStateFailure;
}

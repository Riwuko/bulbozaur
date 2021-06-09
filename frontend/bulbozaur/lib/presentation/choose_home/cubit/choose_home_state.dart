part of 'choose_home_cubit.dart';

@freezed
class ChooseHomeState with _$ChooseHomeState {
  const factory ChooseHomeState.initial() = _ChooseHomeStateInitial;
  @Implements(LayoutBuilderState)
  const factory ChooseHomeState.buildings(
      {required List<BuildingsEntity> buildings}) = _ChooseHomeStateBuildings;
  @Implements(FailureState)
  const factory ChooseHomeState.failure() = _ChooseHomeStateFailure;
}

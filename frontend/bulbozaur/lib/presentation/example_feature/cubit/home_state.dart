part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  @Implements(UpdateTemperatureState)
  @Implements(UpdateCounterState)
  const factory HomeState.initial() = _HomeStateInitial;

  @Implements(UpdateTemperatureState)
  const factory HomeState.updateTemperature({required int temperature}) = _HomeStateUpdateTemperature;

  @Implements(UpdateTemperatureState)
  const factory HomeState.failure() = _HomeStateFailure;

  @Implements(UpdateCounterState)
  const factory HomeState.updateCounter({required int counter}) = _HomeStateUpdateCounter;

}

abstract class UpdateTemperatureState {}

abstract class UpdateCounterState {}

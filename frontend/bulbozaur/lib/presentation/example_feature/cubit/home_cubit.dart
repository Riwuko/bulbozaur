import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../core/base_features/base/cubit/base_cubit.dart';
import '../../../domain/entities/example_feature/click_counter_entity.dart';
import '../../../domain/use_case/example_feature/fetch_temperature_usecase.dart';
import '../../../domain/use_case/example_feature/get_click_counter_usecase.dart';
import '../../../domain/use_case/example_feature/save_click_counter_usecase.dart';

part 'home_cubit.freezed.dart';
part 'home_state.dart';

@Injectable()
class HomeCubit extends BaseCubit<HomeState> {
  static const int _baseCounterValue = 0;
  final GetClickCounterUseCase _getClickCounterUseCase;
  final SaveClickCounterUseCase _saveClickCounterUseCase;
  final FetchTemperatureUseCase _fetchTemperatureUseCase;

  HomeCubit(
    this._getClickCounterUseCase,
    this._saveClickCounterUseCase,
    this._fetchTemperatureUseCase,
  ) : super(HomeState.initial());

  @override
  Future<void> init() async {
    await _getClickCounterUseCase().then(
      (value) => value.fold(
        (l) => emit(HomeState.updateCounter(counter: _baseCounterValue)),
        (r) => emit(HomeState.updateCounter(counter: r.count)),
      ),
    );
  }

  Future<void> didTapIncrement() async {
    final oldValue = await _getClickCounterUseCase().then(
      (value) => value.fold(
        (l) => _baseCounterValue,
        (r) => r.count,
      ),
    );
    final newValue = ClickCounterEntity(count: oldValue + 1);
    await _saveClickCounterUseCase(newValue);
    emit(HomeState.updateCounter(counter: newValue.count));
  }

  Future<void> didTapFetchTemperature() async {
    await _fetchTemperatureUseCase().then(
      (value) => value.fold(
        (failure) => emit(HomeState.failure()),
        (temperature) => emit(HomeState.updateTemperature(temperature: temperature)),
      ),
    );
  }
}

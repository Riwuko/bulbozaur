import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:project_skeleton/core/base_features/base/cubit/base_cubit.dart';
import 'package:project_skeleton/domain/entities/buildings_entities/buildings_entity.dart';
import 'package:project_skeleton/domain/use_case/getAllHouses.dart';

part 'choose_home_cubit.freezed.dart';
part 'choose_home_state.dart';

@Injectable()
class ChooseHomeCubit extends BaseCubit<ChooseHomeState> {
  final GetTheHouses _getTheHouses;

  ChooseHomeCubit(this._getTheHouses) : super(ChooseHomeState.initial());

  @override
  Future<void> init() async {
    (await _getTheHouses()).fold(
      (failure) => emit(ChooseHomeState.failure()),
      (r) => emit(ChooseHomeState.buildings(buildings: r)),
    );
  }
}

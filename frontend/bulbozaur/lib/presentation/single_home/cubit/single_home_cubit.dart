import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:project_skeleton/core/base_features/base/cubit/base_cubit.dart';

part 'single_home_cubit.freezed.dart';

part 'single_home_state.dart';

@Injectable()
class SingleHomeCubit extends BaseCubit<SingleHomeState> {
  SingleHomeCubit() : super(SingleHomeState.initial());

  @override
  Future<void> init() async {}
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../core/base_features/base/cubit/base_cubit.dart';

part 'create_schedule_cubit.freezed.dart';
part 'create_schedule_state.dart';

@Injectable()
class CreateScheduleCubit extends BaseCubit<CreateScheduleState> {
  CreateScheduleCubit() : super(CreateScheduleState.initial());

  @override
  Future<void> init() async {}

  Future<void> didChangeManualControl(int idIcon) async {
    emit(CreateScheduleState.choosedIcon(id: idIcon));
  }
}

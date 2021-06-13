import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:project_skeleton/domain/entities/deviceDisplay/device_display.dart';
import 'package:project_skeleton/domain/entities/schedule_device_state_entity/schedule_device_state_entity.dart';
import 'package:project_skeleton/domain/getAllAboutHouse.dart';
import 'package:project_skeleton/presentation/single_home/cubit/single_home_cubit.dart';

import '../../../core/base_features/base/cubit/base_cubit.dart';

part 'create_schedule_cubit.freezed.dart';
part 'create_schedule_state.dart';

@Injectable()
class CreateScheduleCubit extends BaseCubit<CreateScheduleState> {
  GetAllAboutHouse _getAllAboutHouse;
  CreateScheduleCubit(this._getAllAboutHouse)
      : super(CreateScheduleState.initial());

  @override
  Future<void> init() async {}

  Future<void> didChangeManualControl(int idIcon) async {
    emit(CreateScheduleState.choosedIcon(id: idIcon));
  }

//TODO:change id{1}
  Future<void> didTapNextButton(
      int idIcon, String name, String from, String to) async {
    final result = await _getAllAboutHouse(1);
    result.fold(
        (l) => emit(CreateScheduleState.failure()),
        (r) => emit(CreateScheduleState.choosedTime(
            id: idIcon,
            name: name,
            fromTime: from,
            toTime: to,
            device: changeType(r))));

    ;
  }

  didChangeManual(bool isTrue) {}

  didChangeDevice(List<deviceDisplay> devices) {}

  Future<void> didTapCreateScheduleButton(
    int idIcon,
    String name,
    String from,
    String to,
    List<deviceDisplay> devices,
  ) async {
    final List<ScheduleDeviceStateEntity> device = devices
        .map((e) => ScheduleDeviceStateEntity(
              state: e.isTurnOn,
              device: int.parse(e.id),
              lightValue: 1,
              stateValue: e.brightness,
            ))
        .toList();

    var params = Params(idIcon, device, from, to, name, 1);
  }
}

class Params {
  final int idIcon;
  final String name;
  final String from;
  final String to;
  final List<ScheduleDeviceStateEntity> devices;
  final int buildingId;

  Params(this.idIcon, this.devices, this.from, this.to, this.name,
      this.buildingId);
}

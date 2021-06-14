import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:project_skeleton/core/base_features/base/cubit/base_cubit.dart';
import 'package:project_skeleton/domain/entities/deviceDisplay/device_display.dart';
import 'package:project_skeleton/domain/entities/devices_entities/devices_entity.dart';
import 'package:project_skeleton/domain/entities/schedule_entites/schedule_entity.dart';
import 'package:project_skeleton/domain/getAllAboutHouse.dart';
import 'package:project_skeleton/domain/use_case/getSchedule.dart';
import 'package:project_skeleton/domain/use_case/mqtt_client.dart';

part 'single_home_cubit.freezed.dart';

part 'single_home_state.dart';

@Injectable()
class SingleHomeCubit extends BaseCubit<SingleHomeState> {
  GetAllAboutHouse _getAllAboutHouse;
  GetSchedule _getSchedule;
  late MqttSendingSignal mqtt;

  SingleHomeCubit(this._getAllAboutHouse, this._getSchedule)
      : super(SingleHomeState.initial());

  @override
  Future<void> init() async {}

  Future<void> start(int id) async {
    mqtt = MqttSendingSignal("user", "192.168.100.123", 1883, "test1",
        "shellies/ShellyBulbDuo-8CAAB55F6265/light/0/set");
    await mqtt.contactMQTT();
    var schedules;
    final result1 = await _getSchedule();
    result1.fold((l) => emit(SingleHomeState.failure()), (r) => schedules = r);
    final result = await _getAllAboutHouse(id);
    result.fold(
        (l) => emit(SingleHomeState.failure()),
        (r) => emit(SingleHomeState.startDisplaying(
            device: changeType(r), schedules: schedules)));
    emit(SingleHomeState.cleanState());
  }

  Future<void> didChangeManualControl(bool isTrue, int buildingId) async {
    String mode = isTrue ? "auto" : "user";
    await mqtt.publishMessageMode(mode, buildingId, -1);
  }

  Future<void> createControlSchedule() async {
    emit(SingleHomeState.createSchedule());
  }

  Future<void> didChangeDevice(List<deviceDisplay> devices,
      List<ScheduleEntity> schedule, String idDevices, int idHome) async {
    emit(SingleHomeState.startDisplaying(device: devices, schedules: schedule));
    String state = devices[int.parse(idDevices)].isTurnOn ? "on" : "off";
    await mqtt.publishMessageParameters(state, idHome,
        devices[int.parse(idDevices)].brightness, 0, int.parse(idDevices));
    emit(SingleHomeState.cleanState());
  }
}

List<deviceDisplay> changeType(List<DeviceEntity> devices) {
  List<deviceDisplay> displaying = devices
      .map((e) => deviceDisplay(
          id: e.id,
          name: e.name,
          brightness: double.parse(e.stateValue),
          isExpanded: false,
          isTurnOn: e.state))
      .toList();
  return displaying;
}

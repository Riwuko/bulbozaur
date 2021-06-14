import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:project_skeleton/core/base_features/base/cubit/base_cubit.dart';
import 'package:project_skeleton/domain/entities/deviceDisplay/device_display.dart';
import 'package:project_skeleton/domain/entities/devices_entities/devices_entity.dart';
import 'package:project_skeleton/domain/entities/measurement_entity.dart';
import 'package:project_skeleton/domain/entities/schedule_entites/schedule_entity.dart';
import 'package:project_skeleton/domain/getAllAboutHouse.dart';
import 'package:project_skeleton/domain/use_case/getMeasurements.dart';
import 'package:project_skeleton/domain/use_case/getSchedule.dart';
import 'package:project_skeleton/domain/use_case/mqtt_client.dart';

part 'single_home_cubit.freezed.dart';

part 'single_home_state.dart';

@Injectable()
class SingleHomeCubit extends BaseCubit<SingleHomeState> {
  GetAllAboutHouse _getAllAboutHouse;
  GetSchedule _getSchedule;
  GetMeasurements _getMeasurements;
  late MqttSendingSignal mqtt;

  SingleHomeCubit(
      this._getAllAboutHouse, this._getSchedule, this._getMeasurements)
      : super(SingleHomeState.initial());

  @override
  Future<void> init() async {}

  Future<void> start(int id) async {
    mqtt = MqttSendingSignal("user", "192.168.100.123", 1883, "test1",
        "shellies/ShellyBulbDuo-8CAAB55F6265/light/0/set");

    // var measure = await _getMeasurements();
    var schedules;
    var measures = <List<MeasurementEntity>>[];
    DateTime time = DateTime.now();
    String toTime = "${time.year}-0${time.month}-${time.day}";
    String fromTime = "${time.year}-0${time.month}-${time.day - 1}";
    String term = "light_level";
    var params = Param(id, fromTime, toTime, term);
    final result1 = await _getSchedule(id);
    result1.fold((l) => emit(SingleHomeState.failure()), (r) => schedules = r);
    final result = await _getAllAboutHouse(id);
    (await _getMeasurements(params))
        .fold((l) => emit(SingleHomeState.failure()), (r) => measures.add(r));
    params.term = "light_intensity";
    (await _getMeasurements(params))
        .fold((l) => emit(SingleHomeState.failure()), (r) => measures.add(r));
    params.term = "device_action";
    (await _getMeasurements(params))
        .fold((l) => emit(SingleHomeState.failure()), (r) => measures.add(r));

    result.fold(
        (l) => emit(SingleHomeState.failure()),
        (r) => emit(SingleHomeState.startDisplaying(
            device: changeType(r), schedules: schedules, measure: measures)));
    final resultq = await mqtt.contactMQTT();
    final resll = await mqtt.publishMessageMode("user", id, -1);
    emit(SingleHomeState.cleanState());
  }

  Future<void> didChangeManualControl(bool isTrue, int buildingId) async {
    String mode = isTrue ? "auto" : "user";
    await mqtt.publishMessageMode(mode, buildingId, -1);
  }

  Future<void> createControlSchedule() async {
    emit(SingleHomeState.createSchedule());
  }

  Future<void> didChangeDevice(
      List<deviceDisplay> devices,
      List<ScheduleEntity> schedule,
      String idDevices,
      int idHome,
      List<List<MeasurementEntity>> measure) async {
    String state = devices[int.parse(idDevices)].isTurnOn ? "on" : "off";
    await mqtt.publishMessageParameters(
        state,
        idHome,
        devices[int.parse(idDevices)].brightness,
        devices[int.parse(idDevices)].whiteColor.toDouble(),
        int.parse(idDevices));
    emit(SingleHomeState.startDisplaying(
        device: devices, schedules: schedule, measure: measure));
    emit(SingleHomeState.cleanState());
  }

  Future<void> didChangeIfBulbTurnOn(
    List<deviceDisplay> devices,
    List<ScheduleEntity> schedule,
    String idDevices,
    int idHome,
    List<List<MeasurementEntity>> measure,
  ) async {
    String mode = devices[int.parse(idDevices)].isTurnOn ? "user" : "auto";
    await mqtt.publishMessageMode(mode, idHome, -1);

    emit(SingleHomeState.startDisplaying(
        device: devices, schedules: schedule, measure: measure));
  }
}

List<deviceDisplay> changeType(List<DeviceEntity> devices) {
  List<deviceDisplay> displaying = devices
      .map((e) => deviceDisplay(
          id: e.id,
          name: e.name,
          brightness: double.parse(e.stateValue),
          isExpanded: false,
          isTurnOn: e.state,
          whiteColor: 0))
      .toList();
  return displaying;
}

class Param {
  String term;
  int buildingId;
  String fromTime;
  String toTime;

  Param(this.buildingId, this.fromTime, this.toTime, this.term);
}

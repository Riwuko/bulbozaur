import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:project_skeleton/core/base_features/base/cubit/base_cubit.dart';
import 'package:project_skeleton/domain/getAllAboutHouse.dart';
import 'package:project_skeleton/domain/use_case/mqtt_client.dart';

part 'single_home_cubit.freezed.dart';

part 'single_home_state.dart';

@Injectable()
class SingleHomeCubit extends BaseCubit<SingleHomeState> {
  GetAllAboutHouse _getAllAboutHouse;

  SingleHomeCubit(this._getAllAboutHouse) : super(SingleHomeState.initial());

  @override
  Future<void> init() async {
    await _getAllAboutHouse();
  }

  Future<void> didChangeManualControl(bool isTrue) async {
    final mqqt = MqttSendingSignal("user", "192.168.0.106", 1883, "test1",
        "shellies/ShellyBulbDuo-8CAAB55F6265/light/0/set");
    await mqqt.contactMQTT();
  }

  Future<void> createControlSchedule() async {
    emit(SingleHomeState.createSchedule());
  }
}

import 'package:project_skeleton/domain/entities/devices_entities/devices_entity.dart';

class deviceDisplay {
  String id;
  String name;
  double brightness;
  bool isTurnOn;
  bool isExpanded;

  deviceDisplay(
      {required this.id,
      required this.name,
      required this.brightness,
      required this.isExpanded,
      required this.isTurnOn});

  deviceDisplay fromEntity(DeviceEntity device) => deviceDisplay(
      id: device.id,
      name: device.name,
      brightness: 0.0,
      isExpanded: false,
      isTurnOn: false);
}

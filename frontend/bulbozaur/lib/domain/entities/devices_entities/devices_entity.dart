import 'package:freezed_annotation/freezed_annotation.dart';

part 'devices_entity.freezed.dart';
part 'devices_entity.g.dart';

@freezed
class DeviceEntity with _$DeviceEntity {
  factory DeviceEntity({
    required String name,
    required String id,
    required String stateValue,
    required bool state,
    //  @JsonKey(name: '__typename') required String type
  }) = _DeviceEntity;
  factory DeviceEntity.fromJson(Map<String, dynamic> json) =>
      _$DeviceEntityFromJson(json);
}

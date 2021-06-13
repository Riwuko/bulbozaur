// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mqtt_client.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

message _$messageFromJson(Map<String, dynamic> json) {
  return message(
    json['state'] as String,
    (json['lightValue'] as num).toDouble(),
    (json['stateValue'] as num).toDouble(),
    json['buildingId'] as int,
    json['bulbId'] as int,
  );
}

Map<String, dynamic> _$messageToJson(message instance) => <String, dynamic>{
      'stateValue': instance.stateValue,
      'state': instance.state,
      'lightValue': instance.lightValue,
      'buildingId': instance.buildingId,
      'bulbId': instance.bulbId,
    };

changeMode _$changeModeFromJson(Map<String, dynamic> json) {
  return changeMode(
    json['mode'] as String,
    json['buildingId'] as int,
    json['bulbId'] as int,
  );
}

Map<String, dynamic> _$changeModeToJson(changeMode instance) =>
    <String, dynamic>{
      'mode': instance.mode,
      'buildingId': instance.buildingId,
      'bulbId': instance.bulbId,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mqtt_client.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

message _$messageFromJson(Map<String, dynamic> json) {
  return message(
    json['brightness'] as int,
    json['turn'] as String,
    json['white'] as int,
  );
}

Map<String, dynamic> _$messageToJson(message instance) => <String, dynamic>{
      'brightness': instance.brightness,
      'turn': instance.turn,
      'white': instance.white,
    };

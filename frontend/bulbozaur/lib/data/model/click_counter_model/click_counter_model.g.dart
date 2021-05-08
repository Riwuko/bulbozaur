// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'click_counter_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ClickCounterModelAdapter extends TypeAdapter<ClickCounterModel> {
  @override
  final int typeId = 0;

  @override
  ClickCounterModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ClickCounterModel(
      count: fields[0] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, ClickCounterModel obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.count);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ClickCounterModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ClickCounterModel _$_$_ClickCounterModelFromJson(Map<String, dynamic> json) {
  return _$_ClickCounterModel(
    count: json['count'] as int?,
  );
}

Map<String, dynamic> _$_$_ClickCounterModelToJson(
        _$_ClickCounterModel instance) =>
    <String, dynamic>{
      'count': instance.count,
    };

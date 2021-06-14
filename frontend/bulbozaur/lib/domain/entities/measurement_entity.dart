import 'package:freezed_annotation/freezed_annotation.dart';

part 'measurement_entity.freezed.dart';
part 'measurement_entity.g.dart';

@freezed
class MeasurementEntity with _$MeasurementEntity {
  factory MeasurementEntity({
    required String measureParameter,
    required double measureValue,
    required String measureDate,
  }) = _MeasurementEntity;
  factory MeasurementEntity.fromJson(Map<String, dynamic> json) =>
      _$MeasurementEntityFromJson(json);
}

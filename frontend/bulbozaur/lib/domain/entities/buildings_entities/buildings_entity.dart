import 'package:freezed_annotation/freezed_annotation.dart';

part 'buildings_entity.freezed.dart';
part 'buildings_entity.g.dart';

@freezed
class BuildingsEntity with _$BuildingsEntity {
  factory BuildingsEntity({
    required String name,
    required String id,
  }) = _BuildingsEntity;

  factory BuildingsEntity.fromJson(Map<String, dynamic> json) =>
      _$BuildingsEntityFromJson(json);
}

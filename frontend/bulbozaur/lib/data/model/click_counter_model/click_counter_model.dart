import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

import '../../local_data_source/database/database_client/database_client_type_id.dart';

part 'click_counter_model.freezed.dart';
part 'click_counter_model.g.dart';


@freezed
@HiveType(typeId: DatabaseClientTypeId.general)
class ClickCounterModel with _$ClickCounterModel{
  const factory ClickCounterModel({
    @HiveField(0)
    @JsonKey(name: 'count') int? count,
  }) = _ClickCounterModel;

  factory ClickCounterModel.fromJson(Map<String, dynamic> json) => _$ClickCounterModelFromJson(json);
}
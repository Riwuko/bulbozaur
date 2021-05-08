import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/model/click_counter_model/click_counter_model.dart';

part 'click_counter_entity.freezed.dart';

@freezed
class ClickCounterEntity with _$ClickCounterEntity {

  static const int _baseCountValue = 0;

  const factory ClickCounterEntity({
    required int count,
  }) = _ClickCounterEntity;

  factory ClickCounterEntity.fromDto(ClickCounterModel model) => ClickCounterEntity(count: (model.count)?? _baseCountValue);
}

import 'package:injectable/injectable.dart';

import '../model/click_counter_model/click_counter_model.dart';
import 'database/database_client/database_client.dart';
import 'database/database_client/database_client_box_name.dart';

abstract class ClickCounterLocalDataSource {
  Future<ClickCounterModel?> getClickCounter();

  Future<void> saveClickCounter(ClickCounterModel value);
}

@Injectable(as: ClickCounterLocalDataSource)
class ClickCounterLocalDataSourceImpl implements ClickCounterLocalDataSource {
  static const String _counterKey = 'counterKey';
  final DatabaseClient _databaseClient;

  String get _boxName => DatabaseClientBoxName.general();

  ClickCounterLocalDataSourceImpl(this._databaseClient);

  @override
  Future<ClickCounterModel?> getClickCounter() async =>
      await _databaseClient.getWithKey<ClickCounterModel>(name: _boxName, key: _counterKey);

  @override
  Future<void> saveClickCounter(ClickCounterModel value) async =>
      _databaseClient.putAtKey(name: _boxName, key: _counterKey, value: ClickCounterModel(count: value.count));
}

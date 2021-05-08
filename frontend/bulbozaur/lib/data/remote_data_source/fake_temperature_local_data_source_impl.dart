import 'dart:math';

import 'package:injectable/injectable.dart';

abstract class FakeTemperatureRemoteDataSource {
  Future<int?> getTemperature();
}

@Injectable(as: FakeTemperatureRemoteDataSource)
class FakeTemperatureRemoteDataSourceImpl implements FakeTemperatureRemoteDataSource {
  @override
  Future<int?> getTemperature() async {
    final value = Random().nextInt(50);

    if (value == 3) {
      // Simulates server request error
      return Future.value(null);
    } else {
      return Future.value(value);
    }
  }
}

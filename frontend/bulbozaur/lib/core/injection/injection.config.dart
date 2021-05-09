// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i11;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/local_data_source/click_counter_local_data_source_impl.dart'
    as _i13;
import '../../data/local_data_source/database/database_client/database_client.dart'
    as _i3;
import '../../data/local_data_source/database/database_client/database_client_impl.dart'
    as _i4;
import '../../data/local_data_source/database/secure_storage/secure_storage.dart'
    as _i9;
import '../../data/local_data_source/database/secure_storage/secure_storage_impl.dart'
    as _i10;
import '../../data/remote_data_source/fake_temperature_local_data_source_impl.dart'
    as _i5;
import '../../data/repositories/click_counter_repository_impl.dart' as _i14;
import '../../data/repositories/fake_temperature_repository_impl.dart' as _i6;
import '../../domain/use_case/example_feature/fetch_temperature_usecase.dart'
    as _i7;
import '../../domain/use_case/example_feature/get_click_counter_usecase.dart'
    as _i15;
import '../../domain/use_case/example_feature/save_click_counter_usecase.dart'
    as _i16;
import '../../presentation/example_feature/cubit/home_cubit.dart' as _i17;
import '../../presentation/login/cubit/login_cubit.dart' as _i8;
import '../../presentation/single_home/cubit/single_home_cubit.dart'
    as _i12; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.DatabaseClient>(() => _i4.DatabaseClientImpl());
  gh.factory<_i5.FakeTemperatureRemoteDataSource>(
      () => _i5.FakeTemperatureRemoteDataSourceImpl());
  gh.factory<_i6.FakeTemperatureRepository>(() =>
      _i6.FakeTemperatureRepositoryImpl(
          get<_i5.FakeTemperatureRemoteDataSource>()));
  gh.factory<_i7.FetchTemperatureUseCase>(
      () => _i7.FetchTemperatureUseCase(get<_i6.FakeTemperatureRepository>()));
  gh.factory<_i8.LoginCubit>(() => _i8.LoginCubit());
  gh.factory<_i9.SecureStorage>(
      () => _i10.SecureStorageImpl(get<_i11.FlutterSecureStorage>()));
  gh.factory<_i12.SingleHomeCubit>(() => _i12.SingleHomeCubit());
  gh.factory<_i13.ClickCounterLocalDataSource>(
      () => _i13.ClickCounterLocalDataSourceImpl(get<_i3.DatabaseClient>()));
  gh.factory<_i14.ClickCounterRepository>(() =>
      _i14.ClickCounterRepositoryImpl(get<_i13.ClickCounterLocalDataSource>()));
  gh.factory<_i15.GetClickCounterUseCase>(
      () => _i15.GetClickCounterUseCase(get<_i14.ClickCounterRepository>()));
  gh.factory<_i16.SaveClickCounterUseCase>(
      () => _i16.SaveClickCounterUseCase(get<_i14.ClickCounterRepository>()));
  gh.factory<_i17.HomeCubit>(() => _i17.HomeCubit(
      get<_i15.GetClickCounterUseCase>(),
      get<_i16.SaveClickCounterUseCase>(),
      get<_i7.FetchTemperatureUseCase>()));
  return get;
}

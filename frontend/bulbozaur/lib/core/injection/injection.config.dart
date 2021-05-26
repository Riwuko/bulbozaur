// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i13;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/local_data_source/click_counter_local_data_source_impl.dart'
    as _i16;
import '../../data/local_data_source/database/database_client/database_client.dart'
    as _i4;
import '../../data/local_data_source/database/database_client/database_client_impl.dart'
    as _i5;
import '../../data/local_data_source/database/secure_storage/secure_storage.dart'
    as _i11;
import '../../data/local_data_source/database/secure_storage/secure_storage_impl.dart'
    as _i12;
import '../../data/remote_data_source/fake_temperature_local_data_source_impl.dart'
    as _i6;
import '../../data/repositories/click_counter_repository_impl.dart' as _i17;
import '../../data/repositories/fake_temperature_repository_impl.dart' as _i7;
import '../../domain/entities/core/getAllHouses.dart' as _i9;
import '../../domain/entities/core/loginUseCase.dart' as _i3;
import '../../domain/use_case/example_feature/fetch_temperature_usecase.dart'
    as _i8;
import '../../domain/use_case/example_feature/get_click_counter_usecase.dart'
    as _i18;
import '../../domain/use_case/example_feature/save_click_counter_usecase.dart'
    as _i19;
import '../../presentation/choose_home/cubit/choose_home_cubit.dart' as _i15;
import '../../presentation/example_feature/cubit/home_cubit.dart' as _i20;
import '../../presentation/login/cubit/login_cubit.dart' as _i10;
import '../../presentation/single_home/cubit/single_home_cubit.dart'
    as _i14; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.CheckIfLoginIsGood>(() => _i3.CheckIfLoginIsGood());
  gh.lazySingleton<_i4.DatabaseClient>(() => _i5.DatabaseClientImpl());
  gh.factory<_i6.FakeTemperatureRemoteDataSource>(
      () => _i6.FakeTemperatureRemoteDataSourceImpl());
  gh.factory<_i7.FakeTemperatureRepository>(() =>
      _i7.FakeTemperatureRepositoryImpl(
          get<_i6.FakeTemperatureRemoteDataSource>()));
  gh.factory<_i8.FetchTemperatureUseCase>(
      () => _i8.FetchTemperatureUseCase(get<_i7.FakeTemperatureRepository>()));
  gh.factory<_i9.GetTheHouses>(() => _i9.GetTheHouses());
  gh.factory<_i10.LoginCubit>(
      () => _i10.LoginCubit(get<_i3.CheckIfLoginIsGood>()));
  gh.factory<_i11.SecureStorage>(
      () => _i12.SecureStorageImpl(get<_i13.FlutterSecureStorage>()));
  gh.factory<_i14.SingleHomeCubit>(() => _i14.SingleHomeCubit());
  gh.factory<_i15.ChooseHomeCubit>(
      () => _i15.ChooseHomeCubit(get<_i9.GetTheHouses>()));
  gh.factory<_i16.ClickCounterLocalDataSource>(
      () => _i16.ClickCounterLocalDataSourceImpl(get<_i4.DatabaseClient>()));
  gh.factory<_i17.ClickCounterRepository>(() =>
      _i17.ClickCounterRepositoryImpl(get<_i16.ClickCounterLocalDataSource>()));
  gh.factory<_i18.GetClickCounterUseCase>(
      () => _i18.GetClickCounterUseCase(get<_i17.ClickCounterRepository>()));
  gh.factory<_i19.SaveClickCounterUseCase>(
      () => _i19.SaveClickCounterUseCase(get<_i17.ClickCounterRepository>()));
  gh.factory<_i20.HomeCubit>(() => _i20.HomeCubit(
      get<_i18.GetClickCounterUseCase>(),
      get<_i19.SaveClickCounterUseCase>(),
      get<_i8.FetchTemperatureUseCase>()));
  return get;
}

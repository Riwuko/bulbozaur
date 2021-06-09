// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i14;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/local_data_source/click_counter_local_data_source_impl.dart'
    as _i17;
import '../../data/local_data_source/database/database_client/database_client.dart'
    as _i5;
import '../../data/local_data_source/database/database_client/database_client_impl.dart'
    as _i6;
import '../../data/local_data_source/database/secure_storage/secure_storage.dart'
    as _i12;
import '../../data/local_data_source/database/secure_storage/secure_storage_impl.dart'
    as _i13;
import '../../data/remote_data_source/fake_temperature_local_data_source_impl.dart'
    as _i7;
import '../../data/repositories/click_counter_repository_impl.dart' as _i18;
import '../../data/repositories/fake_temperature_repository_impl.dart' as _i8;
import '../../domain/use_case/example_feature/fetch_temperature_usecase.dart'
    as _i9;
import '../../domain/use_case/example_feature/get_click_counter_usecase.dart'
    as _i19;
import '../../domain/use_case/example_feature/save_click_counter_usecase.dart'
    as _i20;
import '../../domain/use_case/getAllHouses.dart' as _i10;
import '../../domain/use_case/loginUseCase.dart' as _i3;
import '../../presentation/choose_home/cubit/choose_home_cubit.dart' as _i16;
import '../../presentation/create_schedule/cubit/create_schedule_cubit.dart'
    as _i4;
import '../../presentation/example_feature/cubit/home_cubit.dart' as _i21;
import '../../presentation/login/cubit/login_cubit.dart' as _i11;
import '../../presentation/single_home/cubit/single_home_cubit.dart'
    as _i15; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.CheckIfLoginIsGood>(() => _i3.CheckIfLoginIsGood());
  gh.factory<_i4.CreateScheduleCubit>(() => _i4.CreateScheduleCubit());
  gh.lazySingleton<_i5.DatabaseClient>(() => _i6.DatabaseClientImpl());
  gh.factory<_i7.FakeTemperatureRemoteDataSource>(
      () => _i7.FakeTemperatureRemoteDataSourceImpl());
  gh.factory<_i8.FakeTemperatureRepository>(() =>
      _i8.FakeTemperatureRepositoryImpl(
          get<_i7.FakeTemperatureRemoteDataSource>()));
  gh.factory<_i9.FetchTemperatureUseCase>(
      () => _i9.FetchTemperatureUseCase(get<_i8.FakeTemperatureRepository>()));
  gh.factory<_i10.GetTheHouses>(() => _i10.GetTheHouses());
  gh.factory<_i11.LoginCubit>(
      () => _i11.LoginCubit(get<_i3.CheckIfLoginIsGood>()));
  gh.factory<_i12.SecureStorage>(
      () => _i13.SecureStorageImpl(get<_i14.FlutterSecureStorage>()));
  gh.factory<_i15.SingleHomeCubit>(() => _i15.SingleHomeCubit());
  gh.factory<_i16.ChooseHomeCubit>(
      () => _i16.ChooseHomeCubit(get<_i10.GetTheHouses>()));
  gh.factory<_i17.ClickCounterLocalDataSource>(
      () => _i17.ClickCounterLocalDataSourceImpl(get<_i5.DatabaseClient>()));
  gh.factory<_i18.ClickCounterRepository>(() =>
      _i18.ClickCounterRepositoryImpl(get<_i17.ClickCounterLocalDataSource>()));
  gh.factory<_i19.GetClickCounterUseCase>(
      () => _i19.GetClickCounterUseCase(get<_i18.ClickCounterRepository>()));
  gh.factory<_i20.SaveClickCounterUseCase>(
      () => _i20.SaveClickCounterUseCase(get<_i18.ClickCounterRepository>()));
  gh.factory<_i21.HomeCubit>(() => _i21.HomeCubit(
      get<_i19.GetClickCounterUseCase>(),
      get<_i20.SaveClickCounterUseCase>(),
      get<_i9.FetchTemperatureUseCase>()));
  return get;
}

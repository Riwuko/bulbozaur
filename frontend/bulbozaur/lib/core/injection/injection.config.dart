// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i15;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/local_data_source/click_counter_local_data_source_impl.dart'
    as _i18;
import '../../data/local_data_source/database/database_client/database_client.dart'
    as _i5;
import '../../data/local_data_source/database/database_client/database_client_impl.dart'
    as _i6;
import '../../data/local_data_source/database/secure_storage/secure_storage.dart'
    as _i13;
import '../../data/local_data_source/database/secure_storage/secure_storage_impl.dart'
    as _i14;
import '../../data/remote_data_source/fake_temperature_local_data_source_impl.dart'
    as _i7;
import '../../data/repositories/click_counter_repository_impl.dart' as _i19;
import '../../data/repositories/fake_temperature_repository_impl.dart' as _i8;
import '../../domain/getAllAboutHouse.dart' as _i10;
import '../../domain/use_case/example_feature/fetch_temperature_usecase.dart'
    as _i9;
import '../../domain/use_case/example_feature/get_click_counter_usecase.dart'
    as _i20;
import '../../domain/use_case/example_feature/save_click_counter_usecase.dart'
    as _i21;
import '../../domain/use_case/getAllHouses.dart' as _i11;
import '../../domain/use_case/loginUseCase.dart' as _i3;
import '../../presentation/choose_home/cubit/choose_home_cubit.dart' as _i17;
import '../../presentation/create_schedule/cubit/create_schedule_cubit.dart'
    as _i4;
import '../../presentation/example_feature/cubit/home_cubit.dart' as _i22;
import '../../presentation/login/cubit/login_cubit.dart' as _i12;
import '../../presentation/single_home/cubit/single_home_cubit.dart'
    as _i16; // ignore_for_file: unnecessary_lambdas

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
  gh.factory<_i10.GetAllAboutHouse>(() => _i10.GetAllAboutHouse());
  gh.factory<_i11.GetTheHouses>(() => _i11.GetTheHouses());
  gh.factory<_i12.LoginCubit>(
      () => _i12.LoginCubit(get<_i3.CheckIfLoginIsGood>()));
  gh.factory<_i13.SecureStorage>(
      () => _i14.SecureStorageImpl(get<_i15.FlutterSecureStorage>()));
  gh.factory<_i16.SingleHomeCubit>(
      () => _i16.SingleHomeCubit(get<_i10.GetAllAboutHouse>()));
  gh.factory<_i17.ChooseHomeCubit>(
      () => _i17.ChooseHomeCubit(get<_i11.GetTheHouses>()));
  gh.factory<_i18.ClickCounterLocalDataSource>(
      () => _i18.ClickCounterLocalDataSourceImpl(get<_i5.DatabaseClient>()));
  gh.factory<_i19.ClickCounterRepository>(() =>
      _i19.ClickCounterRepositoryImpl(get<_i18.ClickCounterLocalDataSource>()));
  gh.factory<_i20.GetClickCounterUseCase>(
      () => _i20.GetClickCounterUseCase(get<_i19.ClickCounterRepository>()));
  gh.factory<_i21.SaveClickCounterUseCase>(
      () => _i21.SaveClickCounterUseCase(get<_i19.ClickCounterRepository>()));
  gh.factory<_i22.HomeCubit>(() => _i22.HomeCubit(
      get<_i20.GetClickCounterUseCase>(),
      get<_i21.SaveClickCounterUseCase>(),
      get<_i9.FetchTemperatureUseCase>()));
  return get;
}

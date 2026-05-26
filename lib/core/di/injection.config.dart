// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:sport_spot/core/di/mappr.dart' as _i110;
import 'package:sport_spot/core/network/dio_module.dart' as _i320;
import 'package:sport_spot/core/router/app_router.dart' as _i16;
import 'package:sport_spot/features/activities/data/datasources/local/activity_local_data_source.dart'
    as _i953;
import 'package:sport_spot/features/activities/data/datasources/local/app_database.dart'
    as _i262;
import 'package:sport_spot/features/activities/data/datasources/remote/activity_api_client.dart'
    as _i690;
import 'package:sport_spot/features/activities/data/datasources/remote/activity_remote_data_source.dart'
    as _i85;
import 'package:sport_spot/features/activities/data/repositories/activity_repository_impl.dart'
    as _i178;
import 'package:sport_spot/features/activities/domain/repositories/activity_repository.dart'
    as _i606;
import 'package:sport_spot/features/activities/domain/usecases/add_activity_usecase.dart'
    as _i652;
import 'package:sport_spot/features/activities/domain/usecases/get_activities_usecase.dart'
    as _i768;
import 'package:sport_spot/features/activities/domain/usecases/join_activity_usecase.dart'
    as _i912;
import 'package:sport_spot/features/activities/presentation/bloc/activities_bloc.dart'
    as _i576;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final dioModule = _$DioModule();
    gh.lazySingleton<_i110.Mappr>(() => const _i110.Mappr());
    gh.lazySingleton<_i361.Dio>(() => dioModule.dio);
    gh.lazySingleton<_i16.AppRouter>(() => _i16.AppRouter());
    gh.lazySingleton<_i262.AppDatabase>(() => _i262.AppDatabase());
    gh.lazySingleton<_i690.ActivityApiClient>(
      () => _i690.ActivityApiClient(gh<_i361.Dio>()),
    );
    gh.lazySingleton<_i953.ActivityLocalDataSource>(
      () => _i953.ActivityLocalDataSourceImpl(gh<_i262.AppDatabase>()),
    );
    gh.lazySingleton<_i85.ActivityRemoteDataSource>(
      () => _i85.ActivityRemoteDataSourceImpl(gh<_i690.ActivityApiClient>()),
    );
    gh.lazySingleton<_i606.ActivityRepository>(
      () => _i178.ActivityRepositoryImpl(
        gh<_i85.ActivityRemoteDataSource>(),
        gh<_i953.ActivityLocalDataSource>(),
        gh<_i110.Mappr>(),
        gh<_i262.AppDatabase>(),
      ),
    );
    gh.lazySingleton<_i652.AddActivityUsecase>(
      () => _i652.AddActivityUsecase(gh<_i606.ActivityRepository>()),
    );
    gh.lazySingleton<_i768.GetActivitiesUsecase>(
      () => _i768.GetActivitiesUsecase(gh<_i606.ActivityRepository>()),
    );
    gh.lazySingleton<_i912.JoinActivityUsecase>(
      () => _i912.JoinActivityUsecase(gh<_i606.ActivityRepository>()),
    );
    gh.factory<_i576.ActivitiesBloc>(
      () => _i576.ActivitiesBloc(
        gh<_i768.GetActivitiesUsecase>(),
        gh<_i912.JoinActivityUsecase>(),
        gh<_i652.AddActivityUsecase>(),
      ),
    );
    return this;
  }
}

class _$DioModule extends _i320.DioModule {}

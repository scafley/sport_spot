import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';
import 'package:sport_spot/features/activities/data/datasources/local/activity_local_data_source.dart';
import 'package:sport_spot/features/activities/data/datasources/local/app_database.dart';
import 'package:sport_spot/features/activities/data/datasources/remote/activity_remote_data_source.dart';
import 'package:sport_spot/features/activities/data/models/activity_model.dart';
import 'package:sport_spot/features/activities/domain/entities/activity.dart';
import 'package:sport_spot/features/activities/domain/repositories/activity_repository.dart';
import 'package:sport_spot/core/di/mappr.dart';
import 'package:sport_spot/core/di/mappr.auto_mappr.dart';

@LazySingleton(as: ActivityRepository)
class ActivityRepositoryImpl implements ActivityRepository {
  final ActivityRemoteDataSource _remoteDataSource;
  final ActivityLocalDataSource _localDataSource;
  final Mappr _mappr;
  final AppDatabase _database;

  ActivityRepositoryImpl(
    this._remoteDataSource,
    this._localDataSource,
    this._mappr,
    this._database,
  );

  @override
  Future<List<Activity>> getActivities() async {
    try {
      final remoteModels = await _remoteDataSource.getActivities();

      await _database.batch((batch) {
        batch.insertAllOnConflictUpdate(
          _database.activityTable,
          remoteModels
              .map(
                (model) => ActivityTableCompanion(
                  id: Value(model.id),
                  title: Value(model.title),
                  sport: Value(model.sport),
                  latitude: Value(model.latitude),
                  longitude: Value(model.longitude),
                  scheduledAt: Value(model.scheduledAt),
                  maxParticipants: Value(model.maxParticipants),
                  currentParticipants: Value(model.currentParticipants),
                  organizerId: Value(model.organizerId),
                ),
              )
              .toList(),
        );
      });

      return remoteModels.map(_toActivity).toList();
    } catch (e) {
      print('Repository error: $e');
      final localModels = await _localDataSource.getActivities();
      return localModels.map(_fromTableData).toList();
    }
  }

  @override
  Future<Activity> getActivity(String id) async {
    try {
      final model = await _remoteDataSource.getActivity(id);
      return _toActivity(model);
    } catch (_) {
      final local = await _localDataSource.getActivity(id);
      if (local == null) throw Exception('Activity not found');
      return _fromTableData(local);
    }
  }

  @override
  Future<Activity> createActivity(Activity activity) async {
    final model = ActivityModel(
      id: activity.id,
      title: activity.title,
      sport: activity.sport,
      latitude: activity.latitude,
      longitude: activity.longitude,
      scheduledAt: activity.scheduledAt,
      maxParticipants: activity.maxParticipants,
      currentParticipants: activity.currentParticipants,
      organizerId: activity.organizerId,
    );
    final created = await _remoteDataSource.createActivity(model);
    return _toActivity(created);
  }

  Activity _toActivity(ActivityModel model) {
    return _mappr.convert<ActivityModel, Activity>(model);
  }

  Activity _fromTableData(ActivityTableData data) {
    return Activity(
      id: data.id,
      title: data.title,
      sport: data.sport,
      latitude: data.latitude,
      longitude: data.longitude,
      scheduledAt: data.scheduledAt,
      maxParticipants: data.maxParticipants,
      currentParticipants: data.currentParticipants,
      organizerId: data.organizerId,
    );
  }
}

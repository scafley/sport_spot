import 'package:injectable/injectable.dart';
import 'package:sport_spot/features/activities/data/datasources/local/app_database.dart';

abstract class ActivityLocalDataSource {
  Future<List<ActivityTableData>> getActivities();
  Future<ActivityTableData?> getActivity(String id);
  Future<void> saveActivities(List<ActivityTableData> activities);
  Future<void> saveActivity(ActivityTableData activity);
}

@LazySingleton(as: ActivityLocalDataSource)
class ActivityLocalDataSourceImpl implements ActivityLocalDataSource {
  final AppDatabase _database;

  ActivityLocalDataSourceImpl(this._database);

  @override
  Future<List<ActivityTableData>> getActivities() =>
      _database.select(_database.activityTable).get();

  @override
  Future<ActivityTableData?> getActivity(String id) => (_database.select(
    _database.activityTable,
  )..where((t) => t.id.equals(id))).getSingleOrNull();

  @override
  Future<void> saveActivities(List<ActivityTableData> activities) async {
    await _database.batch((batch) {
      batch.insertAllOnConflictUpdate(_database.activityTable, activities);
    });
  }

  @override
  Future<void> saveActivity(ActivityTableData activity) =>
      _database.into(_database.activityTable).insertOnConflictUpdate(activity);
}

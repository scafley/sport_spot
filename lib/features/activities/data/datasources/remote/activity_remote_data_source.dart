import 'package:injectable/injectable.dart';
import 'package:sport_spot/features/activities/data/datasources/remote/activity_api_client.dart';
import 'package:sport_spot/features/activities/data/models/activity_model.dart';

abstract class ActivityRemoteDataSource {
  Future<List<ActivityModel>> getActivities();
  Future<ActivityModel> getActivity(String id);
  Future<ActivityModel> createActivity(ActivityModel activity);
}

@LazySingleton(as: ActivityRemoteDataSource)
class ActivityRemoteDataSourceImpl implements ActivityRemoteDataSource {
  final ActivityApiClient _apiClient;

  ActivityRemoteDataSourceImpl(this._apiClient);

  @override
  Future<List<ActivityModel>> getActivities() async {
    final result = await _apiClient.getActivities();
    print('Remote data: ${result.length}');
    return result;
  }

  @override
  Future<ActivityModel> getActivity(String id) => _apiClient.getActivity(id);

  @override
  Future<ActivityModel> createActivity(ActivityModel activity) =>
      _apiClient.createActivity(activity);
}

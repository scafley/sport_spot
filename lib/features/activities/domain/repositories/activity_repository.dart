import 'package:sport_spot/features/activities/domain/entities/activity.dart';

abstract class ActivityRepository {
  Future<List<Activity>> getActivities();
  Future<Activity> getActivity(String id);
  Future<Activity> createActivity(Activity activity);
}
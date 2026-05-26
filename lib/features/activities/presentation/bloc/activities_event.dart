import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sport_spot/features/activities/domain/entities/activity.dart';

part 'activities_event.freezed.dart';

@freezed
abstract class ActivitiesEvent with _$ActivitiesEvent {
  const factory ActivitiesEvent.loadActivities() = LoadActivities;
  const factory ActivitiesEvent.addActivity(Activity activity) = AddActivity;
  const factory ActivitiesEvent.joinActivity(String id) = JoinActivity;
}
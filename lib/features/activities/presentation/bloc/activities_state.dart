import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sport_spot/features/activities/domain/entities/activity.dart';

part 'activities_state.freezed.dart';

@freezed
abstract class ActivitiesState with _$ActivitiesState {
  const factory ActivitiesState.initial() = ActivitiesInitial;
  const factory ActivitiesState.loading() = ActivitiesLoading;
  const factory ActivitiesState.loaded(List<Activity> activities) = ActivitiesLoaded;
  const factory ActivitiesState.error(String message) = ActivitiesError;
}
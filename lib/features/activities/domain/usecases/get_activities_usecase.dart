


import 'package:injectable/injectable.dart';
import 'package:sport_spot/features/activities/domain/entities/activity.dart';
import 'package:sport_spot/features/activities/domain/repositories/activity_repository.dart';

@lazySingleton
class GetActivitiesUsecase {
  final ActivityRepository _repository;

  GetActivitiesUsecase(this._repository);

  Future<List<Activity>> call() => _repository.getActivities();
}